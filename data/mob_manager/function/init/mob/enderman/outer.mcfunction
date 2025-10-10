#> mob_manager:init/mob/enderman/outer
#
# 
#
# @within function mob_manager:init/mob/enderman/

# 乱数取得
    execute store result score $Random Temporary run random value 0..7

# 乱数に応じて召喚
    execute if score $Random Temporary matches 0..5 run data modify storage api: Argument.ID set value "enemy.enderman_neutral"
    execute if score $Random Temporary matches 6..7 run data modify storage api: Argument.ID set value "enemy.outer_enderman_chaser"

# リセット
    scoreboard players reset $Random Temporary
