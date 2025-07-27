#> asset:mob/enemy.ender_dragon/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/enemy.ender_dragon/**
    scoreboard objectives add enemy.ender_dragon.Tick.Platform dummy
    scoreboard objectives add enemy.ender_dragon.RotaterID dummy
    scoreboard objectives add enemy.ender_dragon.Phase dummy
