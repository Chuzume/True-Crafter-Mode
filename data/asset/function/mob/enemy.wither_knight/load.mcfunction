#> asset:mob/enemy.wither_knight/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/enemy.wither_knight/**
    scoreboard objectives add enemy.wither_knight.CoolTime dummy
    scoreboard objectives add enemy.wither_knight.ShotCount dummy
