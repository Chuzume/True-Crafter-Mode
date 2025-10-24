#> asset:mob/enemy.zombie_brute/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 頭装備
    item replace entity @s armor.head with player_head[profile={id:[I;-20833550,-322485017,-1790574936,-943106443],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjQ3MGZlNjQ5NjQ4ZWZjOGE2ZjdhYzQxNmUwZWViOGMxYTliNDI1YTUzYTUyZTQ1NjdmYTM3M2U4YTY3NzE2MyJ9fX0="}]}]
# 胴装備
    #item replace entity @s armor.chest with iron_chestplate
    item replace entity @s armor.chest with leather_chestplate[dyed_color=13619154,trim={material:"minecraft:iron",pattern:"minecraft:shaper"}]
# 脚装備
    item replace entity @s armor.legs with iron_leggings
    #item replace entity @s armor.legs with leather_leggings[dyed_color=5585920]
# 足装備
    item replace entity @s armor.feet with iron_boots
# メインハンド装備
    item replace entity @s weapon.mainhand with iron_axe

# ドロップ無効化(頭を取られると困る)
    data modify entity @s drop_chances.head set value 0.0

# チームに参加
    team join TrueCrafterEnemy @s

# ステータス
    data modify entity @s CustomName set value {"fallback":"ゾンビブルート","translate":"entity.true_crafter_mode.zombie_brute"}
    attribute @s minecraft:movement_speed base set 0.25
    attribute @s minecraft:fall_damage_multiplier base set 0
    attribute @s minecraft:step_height base set 1
    attribute @s knockback_resistance base set 1
    attribute @s scale base set 1.25
    attribute @s max_health base set 30
    effect give @s instant_damage 1 100 true

# 一定の難易度以下では子供にならない
    execute if score $Difficulty Global matches ..4 run data modify entity @s IsBaby set value false

# 頭の一個上を壊しちゃう
    setblock ~ ~3 ~ air destroy
