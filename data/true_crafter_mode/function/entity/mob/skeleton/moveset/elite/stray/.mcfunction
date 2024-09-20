#> true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/

# 同Tickの場合、他の場所でThisタグ持ちを指定するとコイツになる
    tag @s add This

# 射撃検知
    execute as @n[type=arrow,distance=..3] on origin if entity @s[tag=This] anchored eyes positioned ^ ^ ^ run function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/shoot
 
# スコア持ってたら弾を撃つ
    execute if score @s TMCM.Action.Burst matches 1.. unless score @s TMCM.Action.Delay matches 1.. anchored eyes positioned ^ ^ ^ run function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/summon_projectile

# ディレイ減らす
    scoreboard players remove @s[scores={TMCM.Action.Delay=0..}] TMCM.Action.Delay 1
    scoreboard players reset @s[scores={TMCM.Action.Delay=..0}] TMCM.Action.Delay

# 時々おもむろに浮かび上がる
    scoreboard players add @s[tag=ChuzOnGround,tag=TMCM.RangedMode] TMCM.Tick 1
    execute if score @s[tag=ChuzOnGround] TMCM.Tick matches 60.. run function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/jump


# クールタイムに入ってたらスコアを減らす
#    scoreboard players remove @s[scores={TMCM.Cooltime=0..}] TMCM.Cooltime 1
#    scoreboard players reset @s[scores={TMCM.Cooltime=..0}] TMCM.Cooltime

# リセット 
    tag @s remove This