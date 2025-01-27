#> true_crafter_mode:entity/mob/slime/tick
#
# スライム
#
# @within function true_crafter_mode:tick

# Init処理
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/slime/init

# 敵対時の処理
    execute if predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/slime/moveset

# 誰とも敵対していない場合、スコアリセット
    execute unless predicate true_crafter_mode:in_hostile run scoreboard players reset @s General.Mob.Tick
