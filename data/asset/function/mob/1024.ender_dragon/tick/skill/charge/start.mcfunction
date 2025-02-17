#> asset:mob/1024.ender_dragon/tick/skill/charge/start/
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/charge/

# 召喚
    summon marker ~ ~ ~ {Tags:["1024.Marker.Rotater"]}

# 同じ向きにする
    execute at @s as @n[tag=1024.Marker.Rotater] run tp @s ~ ~ ~ ~-180 ~

# DragonPhase変更
    data modify entity @s DragonPhase set value 0
