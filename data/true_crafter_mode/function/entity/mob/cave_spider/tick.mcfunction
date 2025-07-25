
# 周囲に敵がいるなら
    execute if entity @s[predicate=lib:in_hostile] run function true_crafter_mode:entity/mob/cave_spider/moveset

# スコアリセット
    execute unless entity @s[predicate=lib:in_hostile] run scoreboard players reset @s TMCM.Tick
