#> asset:mob/1025.wither/tick/skill/summon/summon/
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/summon/

# 自身を中心にしもべを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @n[type=marker,tag=SpreadMarker] at @r[distance=..64] run function lib:spread_entity/

# 召喚
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] facing entity @p[distance=..64] feet run function api:mob/summon.m {ID:1028}
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] run function asset:mob/1025.wither/tick/skill/summon/summon/vfx
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] run function asset:mob/1025.wither/tick/skill/summon/summon/break

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]
