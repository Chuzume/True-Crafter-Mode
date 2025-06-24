#> asset:mob/1024.ender_dragon/tick/skill/charge/start/
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/charge/

# 演出
    playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 10 0.5
    playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 10 0.8

# 召喚
    summon marker ~ ~ ~ {Tags:["1024.Marker.Rotater"]}

# 同じ向きにする
    execute at @s as @n[tag=1024.Marker.Rotater] run tp @s ~ ~ ~ ~-180 ~

# DragonPhase変更
    data modify entity @s DragonPhase set value 0
