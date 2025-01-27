#> true_crafter_mode:entity/mob/skeleton/init/elite/stray
#
# ストレイのエリートタイプ
#
# @within function true_crafter_mode:entity/mob/skeleton/init/elite/skeleton/

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
# タグ付与
    tag @s add TMCM.Mob.EltieStray
# エフェクトなど
    attribute @s generic.gravity base set 0.04
    attribute @s fall_damage_multiplier base set 0.0
