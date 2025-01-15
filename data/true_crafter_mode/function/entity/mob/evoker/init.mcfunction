#> true_crafter_mode:entity/mob/evoker/init
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/tick

# ステータス
    attribute @s minecraft:step_height base set 1
    attribute @s generic.knockback_resistance base set 1

# 体力
    attribute @s generic.max_health base set 50
    effect give @s instant_health 1 100 true

# Init終了
    tag @s add TMCM.AlreadyInit
