
# スポーン時
    execute if entity @s[tag=!T.HardAlreadyInit] run function t.hard:enemy/spider/init

# 周囲に敵がいるなら
    execute if entity @s[predicate=t.hard:battle_mode] run function t.hard:enemy/spider/moveset

# スコアリセット
<<<<<<< HEAD:data/t.hard/function/enemy/spider/tick.mcfunction
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s TrueCrafterMode.Tick
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s t.hardMoveset2
=======
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s T.HardMoveset1
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s T.HardMoveset2
>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/spider/tick.mcfunction
