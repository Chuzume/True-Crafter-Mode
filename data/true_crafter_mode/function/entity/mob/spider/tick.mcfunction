
# スポーン時
    #execute if entity @s[tag=!T.HardAlreadyInit] run function true_crafter_mode:entity/mob/spider/init

# 周囲に敵がいるなら
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/spider/moveset

# スコアリセット
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run scoreboard players reset @s TrueCrafterMode.Tick
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run scoreboard players reset @s t.hardMoveset2
