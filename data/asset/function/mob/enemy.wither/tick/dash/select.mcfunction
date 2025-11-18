#> asset:mob/enemy.wither/tick/dash/select
#
# 
#
# @within function asset:mob/enemy.wither/tick/in_hostile

#> private
# @private
    #declare score_holder $Random

# 行動中扱いにする
    tag @s add enemy.wither.InDash

# 乱数によるスキル選択
    data modify storage lib: Args.key set value "enemy.wither.Dash"
    data modify storage lib: Args.max set value 3
    execute if score @s enemy.wither.Phase matches 2.. run data modify storage lib: Args.max set value 3
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# デバッグのコマンド
#    scoreboard players set $Random Temporary 2

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s remove enemy.wither.InDash
    execute if score $Random Temporary matches 1..2 run tag @s add enemy.wither.Dash.Side
    execute if score $Random Temporary matches 1 run tag @s add enemy.wither.Dash.Left
    execute if score $Random Temporary matches 2 run tag @s add enemy.wither.Dash.Right

# リセット
    scoreboard players reset $Random Temporary
