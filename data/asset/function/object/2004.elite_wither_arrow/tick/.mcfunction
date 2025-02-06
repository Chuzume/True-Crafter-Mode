#> asset:object/2004.elite_wither_arrow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2004/tick

# パーティクル
    execute at @s run particle dust{color:[0.5,0.5,0.5],scale:0.5} ~ ~ ~ 0.1 0.1 0.1 1 10

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# しばらくすると落下する
    execute if score @s General.Object.Tick matches 100 run data modify entity @s NoGravity set value false
