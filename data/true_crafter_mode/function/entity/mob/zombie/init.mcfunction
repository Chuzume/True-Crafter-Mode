
# ステータス
    attribute @s[nbt=!{IsBaby:1b}] minecraft:movement_speed base set 0.32
    attribute @s minecraft:fall_damage_multiplier base set 0
    attribute @s minecraft:step_height base set 1

# 帽子被る
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/common_moveset/wear_hat

# Init終了
    tag @s add TMCM.AlreadyInit
