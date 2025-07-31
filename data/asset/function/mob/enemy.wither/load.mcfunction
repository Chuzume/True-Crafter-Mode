#> asset:mob/enemy.wither/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/enemy.wither/**
    scoreboard objectives add enemy.wither.Phase dummy
    scoreboard objectives add enemy.wither.OutOfCombat dummy
