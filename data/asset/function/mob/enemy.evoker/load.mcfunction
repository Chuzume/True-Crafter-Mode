#> asset:mob/enemy.evoker/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/enemy.evoker/**
    scoreboard objectives add enemy.evoker.Summon dummy
    scoreboard objectives add enemy.evoker.Health dummy
