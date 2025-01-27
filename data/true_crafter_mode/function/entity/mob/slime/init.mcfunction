#> true_crafter_mode:entity/mob/slime/init
#
# Init
#
# @within function true_crafter_mode:entity/mob/slime/tick

# ステータス
    attribute @s minecraft:fall_damage_multiplier base set 0

# サイズごと
    # 0
        attribute @s[nbt={Size:0}] movement_speed base set 0.5
        attribute @s[nbt={Size:0}] generic.jump_strength base set 0.5
    # 1
        attribute @s[nbt={Size:1}] movement_speed base set 0.7
        attribute @s[nbt={Size:1}] generic.jump_strength base set 0.8
    # 3
        attribute @s[nbt={Size:3}] movement_speed base set 0.9
        attribute @s[nbt={Size:3}] generic.jump_strength base set 1

# ヘルス調整
    effect give @s instant_health 1 100 true

# サイズをキープしておく
    execute store result score @s TMCM.SubAction run data get entity @s Size

# Init終了
    tag @s add TMCM.AlreadyInit
