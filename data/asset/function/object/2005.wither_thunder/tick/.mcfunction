#> asset:object/2005.wither_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2005/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# しばらくすると炸裂する
    execute if score @s General.Object.Tick matches 30 run function asset:object/2005.wither_thunder/tick/thunder
