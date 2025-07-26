#> asset:mob/enemy.piglin_crossbow/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 能力強化など
    data modify entity @s IsImmuneToZombification set value true
    attribute @s fall_damage_multiplier base set 0
    attribute @s minecraft:max_health base set 20
    effect give @s instant_health 1 100 true

# ノックバックに強くしてみる
    attribute @s knockback_resistance base set 0.15

# 手持ちにフレイムと高速装填を付与
    item modify entity @s weapon.mainhand {function:set_enchantments,enchantments:{"minecraft:flame":1}}
    item modify entity @s weapon.mainhand {function:set_enchantments,enchantments:{"minecraft:quick_charge":2}}

# 鞘の処理
#    # データ指定
#        data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:golden_axe",count:1}
#        data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]}
#    # 召喚
#        function api:object/summon.m {ID:other.sheath}
#    # 乗せる
#        ride @n[type=item_display,distance=..0.1] mount @s
