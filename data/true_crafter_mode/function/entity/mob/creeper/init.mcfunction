# ステータス
    attribute @s[nbt=!{IsBaby:1b}] minecraft:generic.movement_speed base set 0.3
    attribute @s minecraft:generic.step_height base set 1

# 爆発出来ないようにする
    data modify entity @s Fuse set value 9999

# Init終了
    tag @s add TMCM.AlreadyInit