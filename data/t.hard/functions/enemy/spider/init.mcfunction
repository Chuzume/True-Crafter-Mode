
# 疑似乱数取得
    execute store result score $Random ChuzTemporary run function t.hard:random
# ほしい範囲に剰余算
    scoreboard players operation $Random ChuzTemporary %= $4 ChuzConst

# ケイブスパイダーとかスケルトンジョッキーとか
    execute if score $Random ChuzTemporary matches 0 run summon cave_spider ~ ~ ~
    execute if score $Random ChuzTemporary matches 1 run summon spider ~ ~ ~ {Tags:["T.Hard_AlreadyInit"],Passengers:[{id:"minecraft:skeleton",Tags:["T.Hard_AlreadyInit","T.Hard_Ske_Ranged"],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:5195068}}}]}]}
    execute if score $Random ChuzTemporary matches 2 run say hi2
    execute if score $Random ChuzTemporary matches 3 run say hi3

# ケイブスパイダーとかスケルトンジョッキーとか
    #execute if entity @e[sort=nearest,limit=1,type=item,nbt={Item:{tag:{T.Hard_Replace:1b}}}] run function t.hard:enemy/common/go_to_void
    #tag @s add T.Hard_AlreadyInit