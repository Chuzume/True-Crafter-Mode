#> asset:mob/1012.enderman/in_hostile/block_break
#
# ブロックを壊す
#
# @within function asset:mob/1012.enderman/in_hostile/

# 破壊処理
    execute rotated ~ 0 positioned ~ ~ ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~ ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~ ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 
    execute rotated ~ 0 positioned ~ ~2 ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~2 ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~2 ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 

# リセット
    scoreboard players reset @s 1012.Tick
