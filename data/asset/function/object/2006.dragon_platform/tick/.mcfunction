#> asset:object/2006.dragon_platform/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2006/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# もやもや…
    execute if score @s General.Object.Tick matches ..40 run particle dust{color:[0.8,0.2,1.0],scale:1.0} ~ ~ ~ 1 1 1 0 2 force @a[distance=..32]

# 足場召喚
    execute if score @s General.Object.Tick matches 40 run function asset:object/2006.dragon_platform/tick/place/

# そろそろ消えるぞ…
    execute if score @s General.Object.Tick matches 300.. run particle dust{color:[0.8,0.2,1.0],scale:2} ~ ~ ~ 2 2 2 0 2 force @a[distance=..16]

# 足場消える
    execute if score @s General.Object.Tick matches 360.. run function asset:object/2006.dragon_platform/tick/break

# 消滅処理
    kill @s[scores={General.Object.Tick=360..}]
