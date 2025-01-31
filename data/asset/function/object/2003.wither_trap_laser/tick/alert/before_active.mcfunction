#> asset:object/2003.wither_trap_laser/tick/alert/before_active
#
# 発動前の警告
#
# @within function 
#   asset:object/2003.wither_trap_laser/tick/
#   asset:object/2003.wither_trap_laser/tick/alert/before_active

# パーティクル
    particle dust{color:[0.7,0.0,0.0],scale:1.5} ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[0.7,0.0,0.0],scale:1.5} ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[0.7,0.0,0.0],scale:1.5} ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..32]

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:object/2003.wither_trap_laser/tick/alert/before_active
