#> asset:mob/enemy.wither/tick/reset/dash
#
# 
#
# @within function asset:mob/enemy.wither/tick/dash/side/

# タグリセット
    tag @s remove enemy.wither.Dash.Left
    tag @s remove enemy.wither.Dash.Right
    tag @s remove enemy.wither.Dash.Teleport
    tag @s remove enemy.wither.InDash

#scoreboard players set @s General.Mob.Tick -10
