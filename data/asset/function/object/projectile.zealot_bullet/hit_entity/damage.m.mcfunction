#> asset:object/projectile.zealot_bullet/hit_entity/damage.m
#
# 
#
# @within function asset:object/projectile.zealot_bullet/hit_entity/

$damage @s $(Damage) minecraft:mob_projectile by @n[scores={MobUUID=$(OwnerID)}]
