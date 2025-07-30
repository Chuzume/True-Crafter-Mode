#> asset:mob/enemy.piglin_crossbow/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 高難易度時、手持ちのアイテムにコンポーネントがないなら、確率で手になんか装備する
    # 火の熱4
        execute if score $Difficulty Global matches 4 if predicate lib:random_pass_per/40 unless data entity @s equipment.mainhand.components run loot replace entity @s weapon.mainhand loot asset:enhance/heat_4/crossbow
    # 火の熱5
        execute if score $Difficulty Global matches 5.. if predicate lib:random_pass_per/60 unless data entity @s equipment.mainhand.components run loot replace entity @s weapon.mainhand loot asset:enhance/heat_5/crossbow

# 能力強化など
    data modify entity @s IsImmuneToZombification set value true
    attribute @s fall_damage_multiplier base set 0
    attribute @s minecraft:max_health base set 20
    effect give @s instant_health 1 100 true

# ノックバックに強くしてみる
    attribute @s knockback_resistance base set 0.15

# 手持ちにフレイムを付与
    item modify entity @s weapon.mainhand {function:set_enchantments,enchantments:{"minecraft:flame":1}}

# 鞘の処理
#    # データ指定
#        data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:golden_axe",count:1}
#        data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]}
#    # 召喚
#        function api:object/summon.m {ID:other.sheath}
#    # 乗せる
#        ride @n[type=item_display,distance=..0.1] mount @s
