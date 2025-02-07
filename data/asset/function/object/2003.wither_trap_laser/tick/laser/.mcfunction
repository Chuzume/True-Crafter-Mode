#> asset:object/2003.wither_trap_laser/tick/laser/
#
# 
#
# @within 
#   function asset:object/2003.wither_trap_laser/tick/
#   asset:object/2003.wither_trap_laser/tick/laser/
# パーティクル
    particle dust{color:[0.878,0.969,0.576],scale:1.0} ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[0.878,0.969,0.576],scale:1.0} ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..32]
    particle dust{color:[0.878,0.969,0.576],scale:1.0} ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..32]
    particle electric_spark ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:object/2003.wither_trap_laser/tick/laser/damage

# 壁がなかったら再帰
#    execute if entity @s[distance=..32] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/
    execute if entity @s[distance=..32] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:object/2003.wither_trap_laser/tick/laser/
