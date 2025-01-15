#> asset:mob/1006.skeleton/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1006/init

# 帽子被る
    # 頭装備がすでに存在しているのなら除外
        execute store result score @s Armor_Check run data get entity @s ArmorItems[3]
    # 装備
        execute if score @s Armor_Check matches 0 run function asset:mob/call.m {method:equip_helmet}
    # スコアリセット
        scoreboard players reset @s Armor_Check

# ステータス
    attribute @s minecraft:step_height base set 1

# 正直難易度上昇に貢献しなさそうで、持ち替えがある都合、これを対策すると処理が散らかるのでアイテム拾わなくする
    data modify entity @s CanPickUpLoot set value false

# 鞘の処理
    # 召喚
        summon item_display ~ ~ ~ {teleport_duration:1,Tags:["TMCM.Other.Sheath","Chuz.Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]},item:{id:"minecraft:stone_axe",count:1}}
    # 乗せる
        ride @n[type=item_display,tag=Chuz.Init] mount @s
        tag @n[type=item_display,tag=Chuz.Init] remove Chuz.Init

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.RangedMode
    