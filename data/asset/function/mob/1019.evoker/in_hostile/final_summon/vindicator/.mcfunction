#> asset:mob/1019.evoker/in_hostile/final_summon/vindicator/
#
# 
#
# @within function asset:mob/1019.evoker/in_hostile/final_summon/active

# 塞がれていたら自分のところに召喚する
    execute if block ^2 ^ ^ #true_crafter_mode:no_collision_safe positioned ^2 ^ ^ run function asset:mob/1019.evoker/in_hostile/final_summon/vindicator/summon
    execute unless block ^2 ^ ^ #true_crafter_mode:no_collision_safe run function asset:mob/1019.evoker/in_hostile/final_summon/vindicator/summon
# 塞がれていたら自分のところに召喚する
    execute if block ^-2 ^ ^ #true_crafter_mode:no_collision_safe positioned ^-2 ^ ^ run function asset:mob/1019.evoker/in_hostile/final_summon/vindicator/summon
    execute unless block ^-2 ^ ^ #true_crafter_mode:no_collision_safe run function asset:mob/1019.evoker/in_hostile/final_summon/vindicator/summon
