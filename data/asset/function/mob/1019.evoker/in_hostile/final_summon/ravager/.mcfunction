#> asset:mob/1019.evoker/in_hostile/final_summon/ravager/
#
# 
#
# @within function asset:mob/1019.evoker/in_hostile/final_summon/active

# 演出
    particle explosion_emitter
    particle minecraft:large_smoke ~ ~ ~ 1 1 1 0 100
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 2

# 召喚
    function asset:mob/1019.evoker/in_hostile/final_summon/ravager/summon.m with storage chuz:storage Temporary

# 乗る
    ride @s mount @n[type=ravager]
