#> true_crafter_mode:entity/mob/zombie/leap_attack/facing_lock
#
# ケツ向けて飛んでこないようにするためのパワーあふれる処理
#
# @within function true_crafter_mode:entity/mob/zombie/leap_attack/

#> テスト用
# @private
    #declare tag Marker.Facing

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Marker.Facing"]}

# マーカーの向き
    execute as @n[type=marker,tag=Marker.Facing] at @s facing entity @n[tag=TMCM.Target] feet run tp @s ~ ~ ~ ~ ~

# 自信の向きをマーカーのやつにする
    data modify entity @s Rotation[0] set from entity @n[type=marker,tag=Marker.Facing] Rotation[0]

# キル
    kill @n[type=marker,tag=Marker.Facing]