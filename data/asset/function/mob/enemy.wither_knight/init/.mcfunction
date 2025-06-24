#> asset:mob/enemy.wither_knight/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 頭装備
    item replace entity @s armor.head with player_head[profile={id:[I;-20833550,-322485017,-1790574936,-943106443],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTMxMzkyMGJkYWIwZmFhMTI4OTk5MjE5NWRjNjRhMjE0OTA5OGIxNTNjMzVjNmJhZTc2NWJhM2IwODQyZDFhOSJ9fX0="}]}]
# 胴装備
    item replace entity @s armor.chest with netherite_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:rib"}] 1
# 脚装備
    item replace entity @s armor.legs with netherite_leggings[trim={material:"minecraft:quartz",pattern:"minecraft:rib"}] 1
# 足装備
    item replace entity @s armor.feet with netherite_boots[trim={material:"minecraft:quartz",pattern:"minecraft:rib"}] 1
# メインハンド装備
    item replace entity @s weapon.mainhand with bow

# 鞘の処理
    # データ指定
        data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:netherite_sword",count:1}
        data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,1f,1f],translation:[0f,-1.1f,-0.3f],scale:[1.3f,1.3f,1.3f]}
    # 召喚
        function api:object/summon.m {ID:2000}
    # 乗せる
        ride @n[type=item_display,distance=..0.1] mount @s

# ステータス
    data modify entity @s CustomName set value '{"fallback":"ウィザーの騎士","translate":"entity.true_crafter_mode.wither_knight"}'
    attribute @s minecraft:fall_damage_multiplier base set 0
    attribute @s minecraft:step_height base set 1
    attribute @s knockback_resistance base set 0.5
    attribute @s scale base set 1.15
    attribute @s max_health base set 40
    effect give @s instant_damage 1 100 true

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.RangedMode

# チーム設定
    team join TrueCrafterEnemy
