#> true_crafter_mode:entity/mob/pillager/init
#
# Init処理
#
# @within function true_crafter_mode:entity/mob/pillager/tick

# ステータス強化
    attribute @s minecraft:generic.knockback_resistance base set 0.3
    attribute @s minecraft:generic.fall_damage_multiplier base set 0
    attribute @s minecraft:generic.step_height base set 1
    attribute @s generic.max_health base set 30
    effect give @s instant_health 1 100 true

# 持ち物強化
    enchant @s multishot