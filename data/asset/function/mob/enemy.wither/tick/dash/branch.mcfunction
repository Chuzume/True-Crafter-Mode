#> asset:mob/enemy.wither/tick/dash/branch
#
# 
#
# @within function asset:mob/enemy.wither/tick/in_hostile

# サイドダッシュ
    execute if entity @s[tag=enemy.wither.Dash.Side] run function asset:mob/enemy.wither/tick/dash/side/
