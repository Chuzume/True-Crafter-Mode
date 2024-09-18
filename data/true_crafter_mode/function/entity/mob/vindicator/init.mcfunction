#> true_crafter_mode:entity/mob/vindicator/init
#
# 
#
# @within function true_crafter_mode:entity/mob/vindicator/tick

# ステータス
    attribute @s minecraft:generic.movement_speed base set 0.4
    attribute @s minecraft:generic.step_height base set 1

# 帽子被る
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/common_moveset/wear_hat

# Init終了
    tag @s add TMCM.AlreadyInit
