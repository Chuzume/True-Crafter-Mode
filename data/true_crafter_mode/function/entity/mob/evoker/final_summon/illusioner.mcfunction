#> true_crafter_mode:entity/mob/evoker/final_summon/illusioner
#
# 強い兄弟を呼び出す
#
# @within function true_crafter_mode:entity/mob/evoker/final_summon/active

# 演出
    playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.5
    particle witch ~ ~1 ~ 0.3 0.5 0.3 0 25
    particle minecraft:dust{color:[0.8,0.0,1.0],scale:1} ~ ~1 ~ 0.3 0.5 0.3 1 25

# 透明化する
    effect give @s invisibility 4 0

# 召喚
    summon illusioner