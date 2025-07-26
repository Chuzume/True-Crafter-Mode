#> asset:mob/enemy.ender_dragon/tick/place_platform/place/3
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/place_platform/

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散させる
    data modify storage lib: Argument.Bounds set value [[32d,32d],[2d,0d],[32d,32d]]
    execute as @n[type=marker,tag=SpreadMarker] positioned 0 80 0 run function lib:spread_entity/

# 召喚
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] run function api:object/summon.m {ID:"gimmick.dragon_platform"}

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]
