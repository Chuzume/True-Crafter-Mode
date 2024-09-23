#> asset:mob/1001.zombie/tick/leap/facing_loack
#
# 
#
# @within function asset:mob/1001.zombie/tick/

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Marker.Facing"]}

# マーカーの向き
    execute as @n[type=marker,tag=Marker.Facing] at @s facing entity @n[tag=TMCM.Target] feet run tp @s ~ ~ ~ ~ ~

# 自信の向きをマーカーのやつにする
    data modify entity @s Rotation[0] set from entity @n[type=marker,tag=Marker.Facing] Rotation[0]

# キル
    kill @n[type=marker,tag=Marker.Facing]
