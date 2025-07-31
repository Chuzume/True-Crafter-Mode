#> asset:mob/enemy.slime/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# ステータス
    attribute @s minecraft:fall_damage_multiplier base set 0

# サイズごと
    # 0
        attribute @s[nbt={Size:0}] movement_speed base set 0.5
        attribute @s[nbt={Size:0}] jump_strength base set 0.5
    # 1
        attribute @s[nbt={Size:1}] movement_speed base set 0.7
        attribute @s[nbt={Size:1}] jump_strength base set 0.8
    # 3
        attribute @s[nbt={Size:3}] movement_speed base set 0.9
        attribute @s[nbt={Size:3}] jump_strength base set 1

# ヘルス調整
    effect give @s instant_health 1 100 true

# サイズをキープしておく
    execute store result score @s enemy.slime.Size run data get entity @s Size
