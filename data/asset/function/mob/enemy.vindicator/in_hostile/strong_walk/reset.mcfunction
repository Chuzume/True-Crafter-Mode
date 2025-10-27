#> asset:mob/enemy.vindicator/in_hostile/strong_walk/reset
#
# 
#
# @within function asset:mob/enemy.vindicator/in_hostile/strong_walk/tick


# 演出
    playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1 1

# 能力値を戻す
    attribute @s knockback_resistance base set 0
    attribute @s minecraft:movement_speed base set 0.3

# スコアリセット
    scoreboard players reset @s General.Mob.Tick
