#> true_crafter_mode:entity/mob/vindicator/init
#
# 
#
# @within function true_crafter_mode:entity/mob/vindicator/tick

# ステータス
    attribute @s minecraft:movement_speed base set 0.4
    attribute @s minecraft:step_height base set 1
    attribute @s generic.max_health base set 30
    effect give @s instant_health 1 100 true

# Init終了
    tag @s add TMCM.AlreadyInit
