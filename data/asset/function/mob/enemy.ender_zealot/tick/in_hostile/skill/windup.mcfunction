#> asset:mob/enemy.ender_zealot/tick/in_hostile/skill/windup
#
# 予備動作
#
# @within function asset:mob/enemy.ender_zealot/tick/in_hostile/

# 演出
    particle trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0 35 force @a[distance=..32]
    particle entity_effect{color:[0.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0.0 35 force @a[distance=..32]
    playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 2 2
    playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 2 0.5
    