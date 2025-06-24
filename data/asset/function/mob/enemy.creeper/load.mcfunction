#> asset:mob/enemy.creeper/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/enemy.creeper/**
    scoreboard objectives add 1011.AttackCount dummy
    scoreboard objectives add 1011.Tick dummy
