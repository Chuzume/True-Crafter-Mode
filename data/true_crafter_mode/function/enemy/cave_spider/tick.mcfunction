
# スポーン時
    execute if entity @s[tag=!T.HardAlreadyInit] run function true_crafter_mode:enemy/cave_spider/init

# 周囲に敵がいるなら
    execute if entity @s[predicate=true_crafter_mode:battle_mode] run function true_crafter_mode:enemy/cave_spider/moveset

# スコアリセット
<<<<<<< HEAD:data/t.hard/function/enemy/cave_spider/tick.mcfunction
    execute unless entity @s[predicate=true_crafter_mode:battle_mode] run scoreboard players reset @s TrueCrafterMode.Tick
=======
    execute unless entity @s[predicate=true_crafter_mode:battle_mode] run scoreboard players reset @s T.HardMoveset1
>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/cave_spider/tick.mcfunction