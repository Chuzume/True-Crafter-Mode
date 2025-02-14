#> asset:mob/1024.ender_dragon/tick/skill/aiming_eyes/summon
#
# 
#
# @within function asset:mob/1016.ender_dragon/tick/skill/aiming_eyes/

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散させる
    data modify storage lib: Argument.Bounds set value [[24d,24d],[8d,8d],[24d,24d]]
    execute as @n[type=marker,tag=SpreadMarker,distance=..128] at @a[distance=..128,sort=random,limit=3] positioned ~ ~8 ~ run function lib:spread_entity/

# 召喚
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s MobUUID
    execute at @n[type=marker,tag=SpreadMarker,distance=..128] facing entity @p eyes run function api:object/summon.m {ID:2007}

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]
