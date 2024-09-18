#> true_crafter_mode:entity/mob/evoker/final_summon/summon/vindicator
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/final_summon/tick

#   
    execute if score @s TMCM.SubAction matches 10 if block ^1 ^ ^1 #true_crafter_mode:no_collision_safe run summon vindicator ^1 ^ ^1
    execute if score @s TMCM.SubAction matches 10 unless block ^1 ^ ^1 #true_crafter_mode:no_collision_safe run summon vindicator ~ ~ ~
