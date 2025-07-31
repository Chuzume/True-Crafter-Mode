#> asset:mob/enemy.slime/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/enemy.slime/**
    scoreboard objectives add enemy.slime.Size dummy
    scoreboard objectives add enemy.slime.Count dummy
