#> asset:mob/1025.wither/tick/dash/select
#
# 
#
# @within function asset:mob/1025.wither/tick/in_hostile

#> private
# @private
    #declare score_holder $Random

# 行動中扱いにする
    tag @s add 1025.InDash

# 乱数によるスキル選択
    data modify storage lib: Args.key set value "1025.Dash"
    data modify storage lib: Args.max set value 3
    execute if score @s 1025.Phase matches 2 run data modify storage lib: Args.max set value 3
    execute if score @s 1025.Phase matches 3 run data modify storage lib: Args.max set value 4
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# デバッグのコマンド
#    scoreboard players set $Random Temporary 2

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s remove 1025.InDash
    execute if score $Random Temporary matches 1..2 run tag @s add 1025.Dash.Side
    execute if score $Random Temporary matches 1 run tag @s add 1025.Dash.Left
    execute if score $Random Temporary matches 2 run tag @s add 1025.Dash.Right
    execute if score $Random Temporary matches 3 run tag @s add 1025.Dash.Teleport

# リセット
    scoreboard players reset $Random Temporary
