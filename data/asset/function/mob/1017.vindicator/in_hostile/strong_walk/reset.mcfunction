#> asset:mob/1017.vindicator/in_hostile/strong_walk/reset
#
# 
#
# @within function asset:mob/1017.vindicator/in_hostile/strong_walk/tick


# 演出
    playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 2

# 能力値を戻す
    attribute @s knockback_resistance base set 0
    attribute @s minecraft:movement_speed base set 0.4

# スコアリセット
    scoreboard players reset @s 1017.Tick
