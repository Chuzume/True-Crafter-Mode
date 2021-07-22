
# 疑似乱数取得
    execute store result score $Random Chuz_Temporary run function t.hard:random
# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz_Temporary %= $4 Chuz_Const

# 1/5の確率でエリートに
    execute if score $Random Chuz_Temporary matches 0 run summon minecraft:skeleton ~ ~ ~ {Tags:["T.HardAlreadyInit","T.HardSke_Ranged","T.HardShielder"],HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11250603}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:11250603}}}]}

# 置き換えを引いたら消える
    execute if score $Random Chuz_Temporary matches 0 run function t.hard:enemy/common/go_to_void
