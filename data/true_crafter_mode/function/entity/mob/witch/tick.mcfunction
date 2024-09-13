#> true_crafter_mode:entity/mob/witch/tick
#
# Tick処理
#
# @within function true_crafter_mode:tick

# 敵対時の動作
    execute if predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/witch/moveset/main

# 敵対してなければTickリセット
    execute unless predicate true_crafter_mode:in_hostile run scoreboard players reset @s TrueCrafterMode.Tick
    