#> asset:object/projectile.ender_eye_laser/tick/laser/alert_red
#
# 
#
# @within function 
#   asset:object/projectile.ender_eye_laser/tick/
#   asset:object/projectile.ender_eye_laser/tick/laser/alert_red

# パーティクル
    particle electric_spark ~ ~ ~ 0 0 0 0.2 1 force @a[distance=..32]
    particle dust{color:[0.6,0.0,0.8],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[0.6,0.0,0.8],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[0.6,0.0,0.8],scale:0.8} ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..32]

# 再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 run function asset:object/projectile.ender_eye_laser/tick/laser/alert_red
