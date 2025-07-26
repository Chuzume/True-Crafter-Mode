#> asset:mob/enemy.piglin_sword/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/enemy.piglin_sword/**
    scoreboard objectives add enemy.piglin_sword.Tick dummy
    scoreboard objectives add enemy.piglin_sword.Health dummy
