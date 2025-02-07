#> asset:mob/1025.wither/tick/phase_transition/summon_minion/
#
# 増援を召喚
#
# @within function asset:mob/1025.wither/tick/phase_transition/

# 自身を中心にしもべを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[24d,24d],[0d,0d],[24d,24d]]
    execute as @n[type=marker,tag=SpreadMarker] run function lib:spread_entity/

# 召喚
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] facing entity @p[distance=..64] feet run function api:mob/summon.m {ID:1027}
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] run function asset:mob/1025.wither/tick/phase_transition/summon_minion/vfx
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] run function asset:mob/1025.wither/tick/phase_transition/summon_minion/break

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]
