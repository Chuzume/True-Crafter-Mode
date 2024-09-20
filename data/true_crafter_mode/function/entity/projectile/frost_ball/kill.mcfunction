#> true_crafter_mode:entity/projectile/frost_ball/kill
#
# 消滅処理
#
# @within function true_crafter_mode:entity/projectile/frost_ball/hit/

# 演出
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 1
    particle poof ~ ~ ~ 0 0 0 0.1 5

# 消滅
    execute on passengers run kill @s
    kill @s