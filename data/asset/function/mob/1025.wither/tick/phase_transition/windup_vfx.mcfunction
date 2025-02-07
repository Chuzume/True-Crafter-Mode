#> asset:mob/1025.wither/tick/phase_transition/windup_vfx
#
# 
#
# @within function asset:mob/1025.wither/tick/phase_transition/

# 演出
    particle minecraft:end_rod ~ ~2 ~ 0.7 1 0.7 0 1 force @a[distance=..32]
    particle minecraft:large_smoke ~ ~2 ~ 0.7 1 0.7 0 1 force @a[distance=..32]
    particle trial_spawner_detection_ominous ~ ~2 ~ 0.7 1 0.7 0 5 force @a[distance=..32]
    particle entity_effect{color:[0.000,1.000,1.000,1.00]} ~ ~2 ~ 0.7 1 0.7 0.0 5 force @a[distance=..32]
