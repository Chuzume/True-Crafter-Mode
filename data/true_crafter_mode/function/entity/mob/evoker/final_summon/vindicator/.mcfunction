#> true_crafter_mode:entity/mob/evoker/final_summon/vindicator/
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/final_summon/tick

#   
    execute if block ^2 ^ ^ #true_crafter_mode:no_collision_safe positioned ^2 ^ ^ run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
    execute unless block ^2 ^ ^ #true_crafter_mode:no_collision_safe run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
#   
    execute if block ^-2 ^ ^ #true_crafter_mode:no_collision_safe positioned ^-2 ^ ^ run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
    execute unless block ^-2 ^ ^ #true_crafter_mode:no_collision_safe run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
