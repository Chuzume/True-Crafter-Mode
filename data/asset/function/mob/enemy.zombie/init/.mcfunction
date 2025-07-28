#> asset:mob/enemy.zombie/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# ステータス
    attribute @s[nbt=!{IsBaby:1b}] minecraft:movement_speed base set 0.32
    attribute @s minecraft:fall_damage_multiplier base set 0
    attribute @s minecraft:step_height base set 1

# 帽子被る
    # 頭装備がすでに存在しているのなら除外
        execute store result score $ArmorCheck Temporary run data get entity @s equipment.head
    # 装備
        execute if score $ArmorCheck Temporary matches 0 run function asset:mob/call.m {method:equip_helmet}
    # スコアリセット
        scoreboard players reset $ArmorCheck Temporary
