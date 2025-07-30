#> world_manager:event/difficulty/disable_time_skip
#
# 寝ても朝が来ねえ…
#
# @within function 
#   world_manager:event/difficulty/4
#   world_manager:event/difficulty/5

# 現在のplayersSleepingPercentageの状況を保存した後、666に
    execute store result score $playersSleepingPercentage Global run gamerule playersSleepingPercentage
    gamerule playersSleepingPercentage 666
