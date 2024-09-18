#> true_crafter_mode:entity/mob/evoker/final_summon/vindicator/
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/final_summon/active

# 塞がれていたら自分のところに召喚する
    execute if block ^2 ^ ^ #true_crafter_mode:no_collision_safe positioned ^2 ^ ^ run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
    execute unless block ^2 ^ ^ #true_crafter_mode:no_collision_safe run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
# 塞がれていたら自分のところに召喚する
    execute if block ^-2 ^ ^ #true_crafter_mode:no_collision_safe positioned ^-2 ^ ^ run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
    execute unless block ^-2 ^ ^ #true_crafter_mode:no_collision_safe run function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
