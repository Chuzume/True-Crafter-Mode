
# 疑似乱数取得
    execute store result score $Random Chuz_Temporary run function t.hard:random
# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz_Temporary %= $9 Chuz_Const

# エリート
    execute if score $Random Chuz_Temporary matches 0..2 run summon minecraft:stray ~ ~ ~ {Tags:["t.hardAlreadyInit","t.hardSke_Ranged","t.hardShielder"],HandItems:[{id:"minecraft:bow",count:1b},{id:"minecraft:shield",count:1b}],ArmorItems:[{id:"minecraft:iron_boots",count:1b},{id:"minecraft:iron_leggings",count:1b},{id:"minecraft:leather_chestplate",count:1b,components:{"minecraft:dyed_color":{rgb:6387319}}},{id:"minecraft:leather_helmet",count:1b,components:{"minecraft:dyed_color":{rgb:6387319}}}]}
# フロスト
    execute if score $Random Chuz_Temporary matches 3..4 run summon minecraft:stray ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"t.hard:custom/frost",Tags:["t.hardFrost","Chuz_NonVanillaMob","t.hardAlreadyInit"],CustomName:'{"text":"Frost"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1b,components:{"minecraft:custom_data":{id:t.hardFrost},"minecraft:profile":{name:"Frost",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmIxYzU4YzNiMGJmZTA3Y2Y3OWMwMTc0MWQwYjkzM2ZmNmE3YTdlYzc1ZjY2YjZmNmNiNDk1MjRjMTZlNzhlZSJ9fX0="}]}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F],active_effects:[{id:"invisibility",amplifier:0b,duration:9999999,show_particles:0b},{id:"slow_falling",amplifier:0b,duration:9999999,show_particles:0b}],attributes:[{id:"generic.attack_damage",base:6}]}
# ガスト
    execute if score $Random Chuz_Temporary matches 5..6 run summon ghast ~ ~5 ~
# 置き換えを引いたら消える
    execute if score $Random Chuz_Temporary matches 0..6 run function t.hard:enemy/common/go_to_void
