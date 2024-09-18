#> true_crafter_mode:entity/mob/evoker/final_summon/vindicator/summon
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/final_summon/vindicator/tick

playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1
particle witch ~ ~1 ~ 0.3 0.5 0.3 0 25
particle minecraft:dust{color:[0.8,0.0,1.0],scale:1} ~ ~1 ~ 0.3 0.5 0.3 1 25
summon vindicator