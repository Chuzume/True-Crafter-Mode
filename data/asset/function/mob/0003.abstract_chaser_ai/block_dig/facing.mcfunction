#> asset:mob/0003.abstract_chaser_ai/block_dig/facing
#
# 
#
# @within function asset:mob/0003.abstract_chaser_ai/block_dig/

# 向き
    # マーカー召喚
        summon marker ~ ~ ~ {Tags:["Marker.Facing"]}
    # マーカーの向き
        execute as @n[type=marker,tag=Marker.Facing] at @s facing entity @p[distance=..32] feet run tp @s ~ ~ ~ ~ ~
    # 自分の向きをマーカーのやつにする
        data modify entity @s Rotation[0] set from entity @n[type=marker,tag=Marker.Facing] Rotation[0]
    # キル
        kill @n[type=marker,tag=Marker.Facing]
