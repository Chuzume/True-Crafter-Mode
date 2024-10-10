#> asset:mob/1019.evoker/in_hostile/final_summon/illusioner/
#
# 
#
# @within function asset:mob/1019.evoker/in_hostile/final_summon/active

# 演出
    playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.5
    particle witch ~ ~1 ~ 0.3 0.5 0.3 0 25
    particle minecraft:dust{color:[0.8,0.0,1.0],scale:1} ~ ~1 ~ 0.3 0.5 0.3 1 25

# 透明化する
    effect give @s invisibility 4 0

# 召喚
    function asset:mob/1019.evoker/in_hostile/final_summon/illusioner/summon.m with storage chuz:storage Temporary
