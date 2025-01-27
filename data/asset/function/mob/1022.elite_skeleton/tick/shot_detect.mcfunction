#> asset:mob/1022.elite_skeleton/tick/shot_detect
#
# 
#
# @within function asset:mob/1022.elite_skeleton/tick/

# 自身にタグを付与
    tag @s add This

# 矢を変換
    execute as @n[type=arrow,tag=!AssetObject,distance=..3] on origin if entity @s[tag=This] run function asset:mob/call.m {method:shot}
    
# リセット
    tag @s remove This
