#> asset:mob/1024.ender_dragon/tick/place_platform/place/1
#
# 低い位置に召喚する
#
# @within function asset:mob/1024.ender_dragon/tick/place_platform/

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散させる
    data modify storage lib: Argument.Bounds set value [[24d,24d],[0d,2d],[24d,24d]]
    execute as @n[type=marker,tag=SpreadMarker] positioned 0 64 0 run function lib:spread_entity/

# 召喚
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] run function api:object/summon.m {ID:2006}

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]
