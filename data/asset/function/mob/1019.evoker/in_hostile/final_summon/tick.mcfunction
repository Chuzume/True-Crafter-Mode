#> asset:mob/1019.evoker/in_hostile/final_summon/tick
#
# 
#
# @within function asset:mob/1019.evoker/in_hostile/

# スコア加算
    scoreboard players add @s 1019.Tick.Summon 1

# 演出
    particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.3 0.5 0.3 0 1
    particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0 1
    particle minecraft:soul_fire_flame ~ ~2 ~ 4 4 4 0 2
    particle minecraft:trial_spawner_detection_ominous ~ ~2 ~ 4 4 4 0 5

# 召喚
    execute if score @s 1019.Tick.Summon matches 40 rotated ~ 0 run function asset:mob/1019.evoker/in_hostile/final_summon/active
