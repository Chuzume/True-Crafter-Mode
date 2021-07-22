
# スポーン時
    execute if entity @s[tag=!T.HardAlreadyInit] run function t.hard:enemy/spider/init

# 周囲に敵がいるなら
    execute if entity @s[predicate=t.hard:battle_mode] run function t.hard:enemy/spider/moveset

# スコアリセット
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s T.HardMoveset1
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s T.HardMoveset2