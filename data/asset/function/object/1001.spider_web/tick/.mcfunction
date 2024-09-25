#> asset:object/1001.spider_web/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1001/tick

# 演出
    particle minecraft:spit ~ ~ ~ 0 0 0 0 1

# 消滅
    scoreboard players add @s General.Object.Tick 1
    kill @s[scores={General.Object.Tick=100..}]

# Super
    function asset:object/super.tick

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
