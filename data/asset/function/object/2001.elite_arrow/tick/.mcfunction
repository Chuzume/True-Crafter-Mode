#> asset:object/2001.elite_arrow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2001/tick

# パーティクル
    execute at @s run particle dust{color:[1.0,0.3,0.3],scale:0.5} ~ ~ ~ 0.1 0.1 0.1 1 10

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
