#> asset:mob/1024.ender_dragon/tick/skill/charge/rotate
#
# 向き制御
#
# @within function asset:mob/1024.ender_dragon/tick/skill/charge/

execute on passengers run tag @s add this
execute rotated as @n[type=armor_stand,tag=this,distance=..16] run rotate @s ~180 ~
execute on passengers run tag @s remove this
