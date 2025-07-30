#> asset:mob/enemy.zombie/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# ステータス
    attribute @s[nbt=!{IsBaby:1b}] minecraft:movement_speed base set 0.32
    attribute @s minecraft:step_height base set 1


# 高難易度時、素手だったら確率で手になんか装備する
    # 素手だったら乱数ロール
        execute unless data entity @s equipment.mainhand store result score $Random Temporary run random value 1..10
    # 火の熱4
        execute if score $Difficulty Global matches 4 if score $Random Temporary matches ..5 run loot replace entity @s weapon.mainhand loot asset:enhance/heat_4/melee_generic
    # リセット
        scoreboard players reset $Random Temporary


# 帽子被る
    # 頭装備がすでに存在しているのなら除外
        execute store result score $ArmorCheck Temporary run data get entity @s equipment.head
    # 装備
        execute if score $ArmorCheck Temporary matches 0 run function asset:mob/call.m {method:equip_helmet}
    # スコアリセット
        scoreboard players reset $ArmorCheck Temporary

# Super
    function asset:mob/super.init
