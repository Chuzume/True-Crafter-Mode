#> asset:mob/enemy.wither_knight/tick/start_move
#
# 
#
# @within function asset:mob/enemy.wither_knight/tick/


effect clear @s invisibility
data modify entity @s Invulnerable set value false
data modify entity @s NoAI set value false
scoreboard players add @s enemy.wither_knight.SpawnTime 9999
