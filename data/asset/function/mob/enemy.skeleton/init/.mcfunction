#> asset:mob/enemy.skeleton/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 帽子被る
    # 頭装備がすでに存在しているのなら除外
        execute store result score $ArmorCheck Temporary run data get entity @s equipment.head
    # 装備
        execute if score $ArmorCheck Temporary matches 0 run function asset:mob/call.m {method:equip_helmet}
    # スコアリセット
        scoreboard players reset $ArmorCheck Temporary

# ステータス
    attribute @s minecraft:step_height base set 1

# 正直難易度上昇に貢献しなさそうで、持ち替えがある都合、これを対策すると処理が散らかるのでアイテム拾わなくする
    data modify entity @s CanPickUpLoot set value false

# 鞘の処理
    # データ指定
        data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:stone_axe",count:1,components:{"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:2.5,operation:"add_value",slot:"mainhand"}]}}

        data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]}
    # 召喚
        function api:object/summon.m {ID:other.sheath}
    # 乗せる
        ride @n[type=item_display,distance=..0.1] mount @s

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.RangedMode
