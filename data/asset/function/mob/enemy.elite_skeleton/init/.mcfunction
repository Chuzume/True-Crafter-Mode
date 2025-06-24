#> asset:mob/enemy.elite_skeleton/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# ステータス
    data modify entity @s CustomName set value '{"fallback":"エリートスケルトン","translate":"entity.true_crafter_mode.elite_skeleton"}'
    attribute @s minecraft:step_height base set 1
    attribute @s max_health base set 30
    effect give @s instant_damage 1 100 true

# 頭装備
    item replace entity @s armor.head with player_head[profile={id:[I;567260598,-187545055,-1980291697,665045643],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk0Yjc4ODc4NzE1ZGZlZmJlZjBkOWFhMzI3NTlmNThhYzQ3OWIzYzgwYjIzODFmYzBkNDdhNDU3ODdiYjQyNyJ9fX0="}]}]
# 胴装備
    #item replace entity @s armor.chest with iron_chestplate
    item replace entity @s armor.chest with leather_chestplate[dyed_color=13619154,trim={material:"minecraft:iron",pattern:"minecraft:shaper"}]
# 脚装備
    item replace entity @s armor.legs with iron_leggings
    #item replace entity @s armor.legs with leather_leggings[dyed_color=5585920]
# 足装備
    item replace entity @s armor.feet with iron_boots
# メインハンド装備
    item replace entity @s weapon.mainhand with bow

# 鞘の処理
    # データ指定
        data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:iron_axe",count:1}
        data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]}
    # 召喚
        function api:object/summon.m {ID:2000}
    # 乗せる
        ride @n[type=item_display,distance=..0.1] mount @s

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.RangedMode
