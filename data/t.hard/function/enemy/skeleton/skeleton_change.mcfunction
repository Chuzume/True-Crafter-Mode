
# 疑似乱数取得
    function t.hard:random
    execute store result score $Random Chuz_Temporary run scoreboard players get $Random.Base Chuz_Global
# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz_Temporary %= $4 Chuz_Const

# 1/5の確率でエリートに
    execute if score $Random Chuz_Temporary matches 0 run summon minecraft:skeleton ~ ~ ~ {Tags:["t.hardAlreadyInit","t.hardSke_Ranged","t.hardShielder"],HandItems:[{id:"minecraft:bow",count:1b},{id:"minecraft:shield",count:1b}],ArmorItems:[{id:"minecraft:iron_boots",count:1b},{id:"minecraft:iron_leggings",count:1b},{id:"minecraft:leather_chestplate",count:1b,components:{"minecraft:dyed_color":{rgb:11250603}}},{id:"minecraft:leather_helmet",count:1b,components:{"minecraft:dyed_color":{rgb:11250603}}}]}

# 置き換えを引いたら消える
    execute if score $Random Chuz_Temporary matches 0 run function t.hard:enemy/common/go_to_void
