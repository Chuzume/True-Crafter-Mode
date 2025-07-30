#> asset:object/system.ominous_bonfire/tick/particle/3
#
# 
#
# @within function asset:object/system.ominous_bonfire/tick/

# 確率で出るもの
    execute if predicate lib:random_pass_per/30 run particle minecraft:flame ~ ~0.5 ~ 0.3 0.5 0.3 0.0 1 force @a[distance=..16]

# 難易度の色
    particle dust{color:[1.000,0.333,0.333],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 1 force @a[distance=..8]
