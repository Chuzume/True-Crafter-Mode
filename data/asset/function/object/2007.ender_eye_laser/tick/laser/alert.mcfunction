#> asset:object/2007.ender_eye_laser/tick/laser/alert
#
# 予告レーザー
#
# @within function 
#   asset:object/2007.ender_eye_laser/tick/
#   asset:object/2007.ender_eye_laser/tick/laser/alert

# パーティクル
    particle dust{color:[0.5,0.5,0.5],scale:0.5} ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[0.5,0.5,0.5],scale:0.5} ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[0.5,0.5,0.5],scale:0.5} ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..32]

# 再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 run function asset:object/2007.ender_eye_laser/tick/laser/alert
