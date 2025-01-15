#> asset:mob/1011.creeper/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1011/init

# ステータス
    attribute @s minecraft:generic.movement_speed base set 0.3
    attribute @s minecraft:generic.step_height base set 1

# 爆発出来ないようにする
    data modify entity @s Fuse set value 9999
