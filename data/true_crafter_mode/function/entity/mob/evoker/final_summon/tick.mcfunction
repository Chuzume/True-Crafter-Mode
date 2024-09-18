#> true_crafter_mode:entity/mob/evoker/final_summon/tick
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/moveset

# スコア加算
    scoreboard players add @s TMCM.SubAction 1

# 召喚
    # ヴィンディケーター
    execute if score @s TMCM.SubAction matches 40 rotated ~ 0 run function true_crafter_mode:entity/mob/evoker/final_summon/active

