#> asset:mob/1005.skeleton/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1005/init

# 帽子被る
    # 頭装備がすでに存在しているのなら除外
        execute store result score @s Armor_Check run data get entity @s ArmorItems[3]
    # 装備
        execute if score @s Armor_Check matches 0 run function asset:mob/call.m {method:equip_helmet}
    # スコアリセット
        scoreboard players reset @s Armor_Check

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
