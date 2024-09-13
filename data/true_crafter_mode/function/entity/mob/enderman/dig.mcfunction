#> true_crafter_mode:entity/mob/enderman/dig
#
# 背が高い人用のデカい破壊処理
#
# @within function true_crafter_mode:entity/mob/enderman/moveset

# 破壊処理
    execute positioned ~ ~ ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy
    execute positioned ~ ~ ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute positioned ~ ~ ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 
    execute positioned ~ ~1 ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy
    execute positioned ~ ~1 ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 
    execute positioned ~ ~2 ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy
    execute positioned ~ ~2 ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute positioned ~ ~2 ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 

# リセット
    scoreboard players reset @s TMCM.Tick