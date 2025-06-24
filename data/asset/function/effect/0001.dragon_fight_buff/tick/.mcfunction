#> asset:effect/0001.dragon_fight_buff/tick/
#
# Effectのtick処理
#
# @within function asset:effect/alias/1/tick

# バフ付与
    effect give @s jump_boost infinite 9 true

# 演出
    execute if predicate lib:random_pass_per/50 run particle entity_effect{color:[1.000,1.000,1.000,0.50]} ~ ~ ~ 0.3 0 0.3 0 1 normal
