#> true_crafter_mode:entity/mob/evoker/destroy_golem
#
# ゴーレムをパーツ単位で分解する
#
# @within function true_crafter_mode:entity/mob/evoker/moveset

# 演出
    particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
    particle explosion ~ ~0.5 ~ 0 0 0 0 1
    playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 1.5 1

# ドロップ
    execute if entity @s[nbt=!{PlayerCreated:1b}] run loot spawn ~ ~ ~ loot minecraft:entities/iron_golem
    #execute if entity @s[nbt={PlayerCreated:1b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_block",Count:4b}}
    function true_crafter_mode:enemy/common/go_to_void