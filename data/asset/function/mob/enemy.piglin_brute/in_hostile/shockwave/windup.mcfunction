#> asset:mob/enemy.piglin_brute/in_hostile/shockwave/windup
#
# 
#
# @within function asset:mob/enemy.piglin_brute/in_hostile/

# 演出
    particle trial_spawner_detection ~ ~ ~ 0.3 1 0.3 0 35 force @a[distance=..32]
    particle entity_effect{color:[1.000,0.5,0.0,1.00]} ~ ~0.5 ~ 0.3 1 0.3 0.0 35 force @a[distance=..32]
    playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.piglin_brute.angry hostile @a ~ ~ ~ 1 0.7

# 少し歩く
    effect give @s slowness 3 2 true
