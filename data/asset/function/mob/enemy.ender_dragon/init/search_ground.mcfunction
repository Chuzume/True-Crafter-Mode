#> asset:mob/enemy.ender_dragon/init/search_ground
#
# 
#
# @within function asset:mob/enemy.ender_dragon/init/

# 目の前に何かあったらそこにTP
    execute unless block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~ ~

# 目の前に何も無くてプレイヤーからそんな離れてなかったらポジションずらして再帰
    execute positioned ~ ~-1 ~ if block ~ ~ ~ #lib:no_collision if entity @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128] run function asset:mob/enemy.ender_dragon/init/search_ground
