
# 疑似乱数取得
    execute store result score $Random Chuz_Temporary run function true_crafter_mode:random
# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz_Temporary %= $9 Chuz_Const

# エリート
    execute if score $Random Chuz_Temporary matches 0..2 run summon minecraft:stray ~ ~ ~ {Tags:["T.HardAlreadyInit","T.HardSke_Ranged","T.HardShielder"],HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6387319}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:6387319}}}]}
# フロスト
    execute if score $Random Chuz_Temporary matches 3..4 run summon minecraft:stray ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"true_crafter_mode:custom/frost",Tags:["T.HardFrost","Chuz_NonVanillaMob","T.HardAlreadyInit"],CustomName:'{"text":"Frost"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{ItemEvent:T.HardFrost,SkullOwner:{Id:[I;561528042,-498511967,-2046977493,1737959260],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmIxYzU4YzNiMGJmZTA3Y2Y3OWMwMTc0MWQwYjkzM2ZmNmE3YTdlYzc1ZjY2YjZmNmNiNDk1MjRjMTZlNzhlZSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999999,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:9999999,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:6}]}
# ガスト
    execute if score $Random Chuz_Temporary matches 5..6 run summon ghast ~ ~5 ~
# 置き換えを引いたら消える
    execute if score $Random Chuz_Temporary matches 0..6 run function true_crafter_mode:enemy/common/go_to_void
