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
    execute if score @s General.Object.Tick matches 5 run data modify storage asset:context this.Speed set value 1
    execute if score @s General.Object.Tick matches 5 run data modify storage asset:context this.MovePerStep set value 0.5
    execute if score @s General.Object.Tick matches 20 run data modify storage asset:context this.Speed set value 2
    execute if score @s General.Object.Tick matches 30 run data modify storage asset:context this.Speed set value 3

# 誘導！
    execute facing entity @p[distance=..64] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# Super!
    function asset:object/super.tick
