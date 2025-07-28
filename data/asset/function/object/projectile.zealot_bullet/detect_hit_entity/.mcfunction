#> asset:object/projectile.zealot_bullet/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

execute positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run data modify storage asset:context IsHitEntity set value true
