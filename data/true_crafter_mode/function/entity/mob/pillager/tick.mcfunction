#> true_crafter_mode:entity/mob/pillager/tick
#
# 
#
# @within function true_crafter_mode:tick

# スポーン時
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/pillager/init

# 敵対状態なら
    #execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/pillager/moveset

# 誰とも敵対していない場合、スコアリセット
    #execute unless entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/common_moveset/reset
