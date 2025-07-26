#> asset:mob/enemy.enderman/in_hostile/block_break
#
# ブロックを壊す
#
# @within function asset:mob/enemy.enderman/in_hostile/

# 破壊処理
    execute rotated ~ 0 positioned ~ ~ ~ unless block ^1 ^ ^1 #lib:no_dig run setblock ^0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~ ~ unless block ^-1 ^ ^1 #lib:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~ ~ unless block ^ ^ ^1 #lib:no_dig run setblock ^ ^ ^1 air destroy 
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^1 ^ ^1 #lib:no_dig run setblock ^0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^-1 ^ ^1 #lib:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #lib:no_dig run setblock ^ ^ ^1 air destroy 
    execute rotated ~ 0 positioned ~ ~2 ~ unless block ^1 ^ ^1 #lib:no_dig run setblock ^0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~2 ~ unless block ^-1 ^ ^1 #lib:no_dig run setblock ^-0.5 ^ ^ air destroy
    execute rotated ~ 0 positioned ~ ~2 ~ unless block ^ ^ ^1 #lib:no_dig run setblock ^ ^ ^1 air destroy 

# リセット
    scoreboard players reset @s General.Mob.Tick
