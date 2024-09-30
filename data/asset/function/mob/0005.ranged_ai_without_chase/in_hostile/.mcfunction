#> asset:mob/0005.ranged_ai_without_chase/in_hostile/
#
# 付近にいる敵に応じて持ち変える
#
# @within asset:mob/alias/4/in_hostile

# 離れてる時は弓
    execute if entity @s[tag=TMCM.MeleeMode] if entity @n[tag=TMCM.Target,distance=5..16] run function asset:mob/0005.ranged_ai_without_chase/in_hostile/weapon_change/ranged

# 近い時は近接武器
    execute if entity @s[tag=TMCM.RangedMode] if entity @n[tag=TMCM.Target,distance=..5] run function asset:mob/0005.ranged_ai_without_chase/in_hostile/weapon_change/melee

# 近接モード時、付近に対象がいる間、バックステップ用スコアを加算
    execute if entity @s[tag=TMCM.MeleeMode] if entity @n[tag=TMCM.Target,distance=..5] run scoreboard players add @s 4.BackStep 1

# 近接当てたら即座にバックステップ
    execute if entity @s[tag=TMCM.MeleeMode,tag=OnGround] if entity @n[tag=TMCM.Target,distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s 4.BackStep 40

# スコアが一定以上かつ、飛び退き先にブロックがあるなら飛ぶ
    execute if score @s 4.BackStep matches 40.. facing entity @n[tag=TMCM.Target] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function asset:mob/call.m {method:back_step}

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
