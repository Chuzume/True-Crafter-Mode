#> asset:object/2005.wither_thunder/tick/damage.m
#
# 
#
# @within function asset:object/2005.wither_thunder/tick/thunder

$damage @s 10 minecraft:mob_projectile by @n[scores={MobUUID=$(OwnerID)}]
effect give @s wither 10 1
