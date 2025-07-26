#> asset:mob/enemy.ender_dragon/tick/skill/charge/start/
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/skill/charge/

# 演出
    playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 10 0.5
    playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 10 0.8

# 召喚
    summon marker ~ ~ ~ {Tags:["enemy.ender_dragon.Marker.Rotater"]}

# 同じ向きにする
    execute at @s as @n[tag=enemy.ender_dragon.Marker.Rotater] run tp @s ~ ~ ~ ~-180 ~

# DragonPhase変更
    data modify entity @s DragonPhase set value 0
