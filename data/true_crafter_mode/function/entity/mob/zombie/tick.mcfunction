# スポーン時
    execute if entity @s[tag=!t.hardAlreadyInit] run function true_crafter_mode:entity/mob/zombie/init

# 敵対状態なら
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/zombie/moveset

# 自身がゾンビピグリンなら常時敵対
    data modify entity @s[type=zombified_piglin] AngryAt set from entity @p[tag=!TrueCrafterMode.Exception] UUID

# 誰とも敵対していない場合、スコアリセット
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run scoreboard players reset @s TrueCrafterMode.Tick
