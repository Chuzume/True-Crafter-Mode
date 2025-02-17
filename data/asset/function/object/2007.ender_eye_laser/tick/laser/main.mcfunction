#> asset:object/2007.ender_eye_laser/tick/laser/main
#
# メインレーザー
#
# @within function 
#   asset:object/2007.ender_eye_laser/tick/laser/shoot
#   asset:object/2007.ender_eye_laser/tick/laser/main

# パーティクル
    particle dust{color:[0.8,0.2,1.0],scale:1} ^ ^ ^ 0.2 0.2 0.2 0 2 force @a[distance=..32]
    particle dust{color:[0.8,0.2,1.0],scale:1} ^ ^ ^0.5 0.2 0.2 0.2 0 2 force @a[distance=..32]
    particle dust{color:[0.8,0.2,1.0],scale:1} ^ ^ ^-0.5 0.2 0.2 0.2 0 2 force @a[distance=..32]
    particle electric_spark ^ ^ ^ 0 0 0 0.5 2 force @a[distance=..32]
    particle electric_spark ^ ^ ^0.5 0 0 0 0.5 2 force @a[distance=..32]
    particle electric_spark ^ ^ ^-0.5 0 0 0 0.5 2 force @a[distance=..32]

# ダメージ
    execute positioned ~-1 ~-1 ~-1 as @a[dx=1,dy=1,dz=1] run function asset:object/2007.ender_eye_laser/tick/laser/damage.m with storage asset:context this

# 再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 run function asset:object/2007.ender_eye_laser/tick/laser/main
