#> true_crafter_mode:entity/mob/skeleton/moveset/
#
# メインの敵対処理
#
# @within function true_crafter_mode:entity/mob/skeleton/tick

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# 亜種の処理
    # エリートスケルトン
        execute if entity @s[tag=TMCM.Mob.EltieSkeleton] run function true_crafter_mode:entity/mob/skeleton/moveset/elite/skeleton/
    # エリートストレイ
        execute if entity @s[tag=TMCM.Mob.EltieStray] run function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/

# 離れてる時は弓
    execute if entity @s[tag=TMCM.MeleeMode] if entity @n[tag=TMCM.Target,distance=5..16] run function true_crafter_mode:entity/mob/common_moveset/weapon_change/ranged

# 近い時は近接武器
    execute if entity @s[tag=TMCM.RangedMode] if entity @n[tag=TMCM.Target,distance=..5] run function true_crafter_mode:entity/mob/common_moveset/weapon_change/melee

# 近接当てたら即座にバックステップ
    execute if entity @s[tag=TMCM.MeleeMode,nbt={OnGround:1b}] if entity @n[tag=TMCM.Target,distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s TMCM.Mob.BackStep 39

# 近接モード時、付近に対象がいる間、バックステップ用スコアを加算
    execute if entity @s[tag=TMCM.MeleeMode] if entity @n[tag=TMCM.Target,distance=..5] run scoreboard players add @s TMCM.Mob.BackStep 1

# スコアが一定以上かつ、飛び退き先にブロックがあるなら飛ぶ
    execute if score @s TMCM.Mob.BackStep matches 40.. facing entity @n[tag=TMCM.Target] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run playsound minecraft:entity.skeleton.death hostile @a ~ ~ ~ 1 2
    execute if score @s TMCM.Mob.BackStep matches 40.. facing entity @n[tag=TMCM.Target] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:entity/mob/common_moveset/back_step

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target
