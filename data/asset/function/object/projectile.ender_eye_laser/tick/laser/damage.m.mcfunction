#> asset:object/projectile.ender_eye_laser/tick/laser/damage.m
#
# 
#
# @within function asset:object/projectile.ender_eye_laser/tick/laser/main

$damage @s 10 minecraft:mob_projectile by @n[scores={MobUUID=$(OwnerID)}]
