#> world_manager:event/difficulty/enable_time_skip/
#
#
# 寝たら朝が来るようになる
#
# @within function world_manager:event/difficulty/

# ゲームルールを戻す
    execute store result storage asset:temp playersSleepingPercentage int 1 run scoreboard players get $playersSleepingPercentage Global
# ただし、スコアボードに値がないようなら100にする
    execute unless score $playersSleepingPercentage Global matches 0.. run data modify storage asset:temp playersSleepingPercentage set value 100
    function world_manager:event/difficulty/enable_time_skip/m with storage asset:temp

# リセット
    scoreboard players reset $playersSleepingPercentage Global
    data remove storage asset:temp playersSleepingPercentage
