#> asset:mob/enemy.wither_knight/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 頭装備
    item replace entity @s armor.head with player_head[profile={id:[I;-1106828496,580862062,-1089587396,-1448779372],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRiZmVkZWM0YWU1NDM5MTVmMTlkZDU1OTE1MzkwZDJlNjUzYjAwNTc5MWVmYjQwZDFmYjNjNzQ5MjYyOWQwYyJ9fX0="}]}]
# 胴装備
    item replace entity @s armor.chest with netherite_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:rib"}] 1
# 脚装備
    item replace entity @s armor.legs with netherite_leggings[trim={material:"minecraft:quartz",pattern:"minecraft:rib"}] 1
# 足装備
    item replace entity @s armor.feet with netherite_boots[trim={material:"minecraft:quartz",pattern:"minecraft:rib"}] 1
# メインハンド装備
    item replace entity @s weapon.mainhand with bow

# 高難易度時、手になんか装備する
    # 火の熱4
        execute if score $Difficulty Global matches 4 run loot replace entity @s weapon.mainhand loot asset:enhance/heat_4/bow
    # 火の熱5
        execute if score $Difficulty Global matches 5.. run loot replace entity @s weapon.mainhand loot asset:enhance/heat_5/bow

# 鞘の処理
    # データ指定
        data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:netherite_sword",count:1}
        data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,1f,1f],translation:[0f,-1.1f,-0.3f],scale:[1.3f,1.3f,1.3f]}
    # 召喚
        function api:object/summon.m {ID:other.sheath}
    # 乗せる
        ride @n[type=item_display,distance=..0.1] mount @s

# ステータス
    data modify entity @s CustomName set value {"fallback":"ウィザーの騎士","translate":"entity.true_crafter_mode.wither_knight"}
    attribute @s minecraft:fall_damage_multiplier base set 0
    attribute @s minecraft:movement_speed base set 0.2
    attribute @s minecraft:step_height base set 1
    attribute @s knockback_resistance base set 0.2
    attribute @s scale base set 1.15
    attribute @s max_health base set 20
    effect give @s instant_damage 1 100 true

# ドロップ無効化(頭を取られると困る)
    data modify entity @s drop_chances.head set value 0.0

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.RangedMode

# チーム設定
    team join TrueCrafterEnemy
