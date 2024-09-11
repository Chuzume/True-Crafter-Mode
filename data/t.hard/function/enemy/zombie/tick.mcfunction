# スポーン時
    execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:enemy/zombie/init

# 周囲に敵がいるなら
    execute if entity @e[predicate=t.hard:battle_mode] run function t.hard:enemy/zombie/moveset

# 自身がゾンビピグリンなら常時敵対
    data modify entity @s[type=zombified_piglin] AngryAt set from entity @p[tag=!t.hardException] UUID

# スコアリセット
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s TrueCrafterMode.Tick