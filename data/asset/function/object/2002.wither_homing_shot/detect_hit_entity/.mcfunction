#> asset:object/2002.wither_homing_shot/detect_hit_entity/
#
# 
#
# @within function asset:object/alias/2002/detect_hit_entity

execute positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run data modify storage asset:context IsHitEntity set value true
