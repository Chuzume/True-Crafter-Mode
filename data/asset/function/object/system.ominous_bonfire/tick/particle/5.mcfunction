#> asset:object/system.ominous_bonfire/tick/particle/5
#
# 
#
# @within function asset:object/system.ominous_bonfire/tick/

# 確率で出るもの
    execute if predicate lib:random_pass_per/30 run particle lava ~ ~ ~ 0.5 0 0.5 1 1 force @a[distance=..16]

# 普通に出るもの
    particle minecraft:trial_spawner_detection ~ ~1 ~ 0.3 0.5 0.3 0 1

# 難易度の色
    particle dust{color:[0.667,0.000,0.667],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 1 force @a[distance=..8]
