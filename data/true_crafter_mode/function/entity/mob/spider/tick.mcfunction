
# スポーン時
    #execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/spider/init

# 周囲に敵がいるなら
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/cave_spider/moveset

# スコアリセット
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run scoreboard players reset @s TMCM.Tick
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run scoreboard players reset @s t.hardMoveset2
