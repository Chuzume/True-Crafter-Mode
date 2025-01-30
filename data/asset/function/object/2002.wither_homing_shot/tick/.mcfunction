#> asset:object/2002.wither_homing_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2002/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=400..}]

# 加速処理
    execute if score @s General.Object.Tick matches 20 run data modify storage asset:context this.Speed set value 3
    execute if score @s General.Object.Tick matches 25 run data modify storage asset:context this.Speed set value 4
    execute if score @s General.Object.Tick matches 30 run data modify storage asset:context this.Speed set value 5
    execute if score @s General.Object.Tick matches 35 run data modify storage asset:context this.Speed set value 5

# 誘導！
    execute unless score @s General.Object.Tick matches 35.. facing entity @p[distance=..64] eyes positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# Super!
    function asset:object/super.tick
