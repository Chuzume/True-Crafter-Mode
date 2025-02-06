#> asset:mob/1025.wither/tick/reset/dash
#
# 
#
# @within function asset:mob/1025.wither/tick/dash/side/

# タグリセット
    tag @s remove 1025.Dash.Left
    tag @s remove 1025.Dash.Right
    tag @s remove 1025.Dash.Teleport
    tag @s remove 1025.InDash

#scoreboard players set @s General.Mob.Tick -10
