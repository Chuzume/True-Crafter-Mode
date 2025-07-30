#> asset:object/system.ominous_bonfire/tick/particle/4
#
# 
#
# @within function asset:object/system.ominous_bonfire/tick/

# 確率で出るもの
    execute if predicate lib:random_pass_per/10 run particle lava ~ ~ ~ 0.5 0 0.5 1 1 force @a[distance=..16]
    execute if predicate lib:random_pass_per/50 run particle minecraft:flame ~ ~0.5 ~ 0.3 0.5 0.3 0.01 1 force @a[distance=..16]

# 難易度の色
    particle dust{color:[0.667,0.000,0.000],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 1 force @a[distance=..8]
