#> asset:mob/enemy.wither_skeleton/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m


# メインハンド装備
    item replace entity @s weapon.mainhand with bow

# 鞘の処理
    # データ指定
        data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:stone_sword",count:1}
        data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,1f,1f],translation:[0f,-1.1f,-0.3f],scale:[1.2f,1.2f,1.2f]}
    # 召喚
        function api:object/summon.m {ID:other.sheath}
    # 乗せる
        ride @n[type=item_display,distance=..0.1] mount @s

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.RangedMode
