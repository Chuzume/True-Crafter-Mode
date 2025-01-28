#> asset:mob/1023.zombie_brute/in_hostile/strong_walk/start
#
# 
#
# @within function asset:mob/1023.zombie_brute/in_hostile/

# 演出
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 2
    particle entity_effect{color:[1.0,0.5,0.0,1.0]} ~ ~1 ~ 0.3 0.5 0.3 0 25

# 能力値強化
    effect give @s strength 3 1 true
    attribute @s movement_speed base set 0.35
