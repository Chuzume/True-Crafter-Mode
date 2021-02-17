# スポーン時
    execute if entity @s[tag=!T.Hard_AlreadyInit] run function t.hard:enemy/zombie/init

# 周囲に敵がいるなら
    execute if entity @e[predicate=t.hard:battle_mode] run function t.hard:enemy/zombie/moveset

# 自身がゾンビピグリンなら常時敵対
    data modify entity @s[type=zombified_piglin] AngryAt set from entity @p[tag=!T.Hard_Exception] UUID