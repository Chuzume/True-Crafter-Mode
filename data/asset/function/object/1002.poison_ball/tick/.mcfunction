#> asset:object/1002.poison_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1002/tick

# 演出
    particle minecraft:item_slime ~ ~ ~ 0 0 0 0 1
    particle minecraft:dust{color:[0.0,0.5,0.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 0

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=50..}]

# Super
    function asset:object/super.tick

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
