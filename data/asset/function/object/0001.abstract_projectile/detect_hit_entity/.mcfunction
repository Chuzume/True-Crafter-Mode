#> asset:object/0001.abstract_projectile/detect_hit_entity/
#
# 指定した条件を満たすとヒット時の処理を実行する
#
# @within asset:object/alias/1/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run data modify storage asset:context IsHitEntity set value true
