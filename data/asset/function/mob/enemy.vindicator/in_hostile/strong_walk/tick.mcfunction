#> asset:mob/enemy.vindicator/in_hostile/strong_walk/tick
#
# 
#
# @within function asset:mob/enemy.vindicator/in_hostile/

# 演出
    particle minecraft:trial_spawner_detection ~ ~1 ~ 0.3 0.5 0.3 0 1

# リセット
    execute if score @s 1017.Tick matches 100.. run function asset:mob/enemy.vindicator/in_hostile/strong_walk/reset
