#> asset:mob/enemy.ender_dragon/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 無敵化
    data modify entity @s Invulnerable set value true

# 0,128,0からサーチ処理を発動、ブロックを探して原点とする
    summon marker 0 128 0 {Tags:["enemy.ender_dragon.Marker.Origin","Init"]}
    execute as @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128] at @s run function asset:mob/enemy.ender_dragon/init/search_ground
    tag @n[type=marker,tag=enemy.ender_dragon.Marker.Origin,distance=..128] remove Init
