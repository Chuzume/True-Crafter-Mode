#> asset:mob/1001.zombie/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1001/init

# ステータス
    attribute @s[nbt=!{IsBaby:1b}] minecraft:generic.movement_speed base set 0.32
    attribute @s minecraft:generic.fall_damage_multiplier base set 0
    attribute @s minecraft:generic.step_height base set 1

# 帽子被る
    # 頭装備がすでに存在しているのなら除外
        execute store result score @s Armor_Check run data get entity @s ArmorItems[3]
    # 装備
        item replace entity @s[scores={Armor_Check=0}] armor.head with leather_helmet[dyed_color=43176] 1
    # スコアリセット
        scoreboard players reset @s Armor_Check
