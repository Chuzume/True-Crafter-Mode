#> asset:mob/enemy.ender_dragon/tick/phase_2/summon_minion/active
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/phase_2/summon_minion/

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散させる
    data modify storage lib: Argument.Bounds set value [[32d,32d],[16d,16d],[32d,32d]]
    execute as @n[type=marker,tag=SpreadMarker] run function lib:spread_entity/

# 召喚
    execute facing entity @p[distance=..128] eyes at @n[type=marker,tag=SpreadMarker,distance=..128] run function api:mob/summon.m {ID:"enemy.ender_zealot"}

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]
