#> asset:mob/enemy.stray_elite/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# チームに参加
    team join TrueCrafterEnemy @s

# ステータス
    data modify entity @s CustomName set value {"fallback":"エリートストレイ","translate":"entity.true_crafter_mode.stray_elite"}
    attribute @s minecraft:step_height base set 1
    attribute @s fall_damage_multiplier base set 0
    attribute @s max_health base set 24
    effect give @s instant_damage 1 100 true

# ドロップ無効化(頭を取られると困る)
    data modify entity @s drop_chances.head set value 0.0

# 頭装備
    item replace entity @s armor.head with player_head[profile={id:[I;772169183,632114727,-1899489715,-1249868912],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmMyMDIwYzk3NDQ2YWM4ZWZlNTJiYjg5MDhhYmNiNjc2NzFiMWMzMmNlOGEwY2RjZTdlZTFiMzAyNTIzMDAzMiJ9fX0="}]}]
# 胴装備
    #item replace entity @s armor.chest with iron_chestplate
    item replace entity @s armor.chest with leather_chestplate[dyed_color=6387319,trim={material:"minecraft:diamond",pattern:"minecraft:shaper"}]
# 脚装備
    item replace entity @s armor.legs with iron_leggings
# 足装備
    item replace entity @s armor.feet with iron_boots
# メインハンド装備
    item replace entity @s weapon.mainhand with bow

# 高難易度時、確率で手になんか装備する
    # 火の熱4
        execute if score $Difficulty Global matches 4 if predicate lib:random_pass_per/40 run loot replace entity @s weapon.mainhand loot asset:enhance/heat_4/bow
    # 火の熱5
        execute if score $Difficulty Global matches 5.. if predicate lib:random_pass_per/60 run loot replace entity @s weapon.mainhand loot asset:enhance/heat_5/bow

# 鞘の処理
    # データ指定
        data modify storage api: Argument.FieldOverride.LootTable set value "asset:item/shield_crasher_hatchet"
        execute if score $Difficulty Global matches 4 if predicate lib:random_pass_per/40 run data modify storage api: Argument.FieldOverride.LootTable set value "asset:enhance/heat_4/skeleton_elite_melee"
        execute if score $Difficulty Global matches 5.. if predicate lib:random_pass_per/60 run data modify storage api: Argument.FieldOverride.LootTable set value "asset:enhance/heat_5/skeleton_elite_melee"
        data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]}
    # 召喚
        function api:object/summon.m {ID:other.sheath}
    # 乗せる
        ride @n[type=item_display,distance=..0.1] mount @s

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.RangedMode
