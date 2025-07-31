#> asset:mob/enemy.elite_skeleton/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/enemy.elite_skeleton/**
    scoreboard objectives add enemy.elite_skeleton.ShotCount dummy
    scoreboard objectives add enemy.elite_skeleton.CoolTime dummy
