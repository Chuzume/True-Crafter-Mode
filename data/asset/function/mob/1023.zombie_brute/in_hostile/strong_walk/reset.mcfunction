#> asset:mob/1023.zombie_brute/in_hostile/strong_walk/reset
#
# 
#
# @within function asset:mob/1023.zombie_brute/in_hostile/

# 演出
    playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 2

# 能力値を戻す
    attribute @s minecraft:movement_speed base set 0.25

# スコアリセット
    scoreboard players reset @s General.Mob.Tick
