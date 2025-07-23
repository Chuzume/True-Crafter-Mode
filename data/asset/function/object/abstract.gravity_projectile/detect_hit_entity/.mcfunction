#> asset:object/abstract.gravity_projectile/detect_hit_entity/
#
# 判定の処理
#
# @within asset:object/alias/2/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run data modify storage asset:context IsHitEntity set value true
