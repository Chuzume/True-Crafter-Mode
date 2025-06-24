#> asset:mob/enemy.creeper/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# ステータス
    attribute @s minecraft:movement_speed base set 0.3
    attribute @s minecraft:step_height base set 1

# 爆発出来ないようにする
    data modify entity @s Fuse set value 9999
