#> asset:object/2010.dragon_light_pillar/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2010/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# しばらくすると炸裂する
    execute if score @s General.Object.Tick matches 30 run function asset:object/2010.dragon_light_pillar/tick/thunder
