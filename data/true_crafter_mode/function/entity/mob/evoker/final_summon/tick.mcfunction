#> true_crafter_mode:entity/mob/evoker/final_summon/tick
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/moveset

# スコア加算
    scoreboard players add @s TMCM.SubAction 1

# 演出
    particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.3 0.5 0.3 0 1
    particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0 1

# 召喚
    execute if score @s TMCM.SubAction matches 40 rotated ~ 0 run function true_crafter_mode:entity/mob/evoker/final_summon/active

