#> asset:mob/1019.evoker/in_hostile/final_summon/pillager
#
# 
#
# @within function asset:mob/1019.evoker/in_hostile/final_summon/ravager/

# 塞がれていたら自分のところに召喚する
    execute if block ^2 ^ ^ #true_crafter_mode:no_collision_safe positioned ^2 ^ ^ run function asset:mob/1019.evoker/in_hostile/final_summon/pillager/summon
    execute unless block ^2 ^ ^ #true_crafter_mode:no_collision_safe run function asset:mob/1019.evoker/in_hostile/final_summon/pillager/summon
# 塞がれていたら自分のところに召喚する
    execute if block ^-2 ^ ^ #true_crafter_mode:no_collision_safe positioned ^-2 ^ ^ run function asset:mob/1019.evoker/in_hostile/final_summon/pillager/summon
    execute unless block ^-2 ^ ^ #true_crafter_mode:no_collision_safe run function asset:mob/1019.evoker/in_hostile/final_summon/pillager/summon
