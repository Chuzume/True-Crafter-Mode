
# 疑似乱数取得
    execute store result score $Random Chuz_Temporary run function true_crafter_mode:random
# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz_Temporary %= $4 Chuz_Const

# ケイブスパイダーとかスケルトンジョッキーとか
    #execute if score $Random Chuz_Temporary matches 0 run summon cave_spider ~ ~ ~
    #execute if score $Random Chuz_Temporary matches 1 run summon spider ~ ~ ~ {Tags:["T.HardAlreadyInit"],Passengers:[{id:"minecraft:skeleton",Tags:["T.HardAlreadyInit","T.HardSke_Ranged"],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:5195068}}}]}]}
    #execute if score $Random Chuz_Temporary matches 2 run summon cave_spider ~ ~ ~ {Tags:["T.HardAlreadyInit"],Passengers:[{id:"minecraft:skeleton",Tags:["T.HardAlreadyInit","T.HardSke_Ranged"],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:1589563}}}]}]}

# 置き換えを引いたら消える
    #execute if score $Random Chuz_Temporary matches 0..2 run function true_crafter_mode:enemy/common/go_to_void

# タグ付与
    tag @s add T.HardAlreadyInit