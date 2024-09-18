#> true_crafter_mode:entity/mob/vindicator/stonrg_walk/
#
# 一時的に強靭と攻撃力を上げる
#
# @within function true_crafter_mode:entity/mob/vindicator/moveset

# 演出
    playsound minecraft:entity.vindicator.celebrate hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 2
    particle entity_effect{color:[1.0,0.5,0.0,1.0]} ~ ~1 ~ 0.3 0.5 0.3 0 25

# 能力値強化
    effect give @s strength 1 0 true
    attribute @s generic.knockback_resistance base set 1
    attribute @s generic.movement_speed base set 0.3