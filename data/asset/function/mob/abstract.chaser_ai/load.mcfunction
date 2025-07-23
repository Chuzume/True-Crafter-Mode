#> asset:mob/abstract.chaser_ai/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/abstract.chaser_ai/**
    scoreboard objectives add abstract.chaser_ai.Dig dummy
    scoreboard objectives add abstract.chaser_ai.Place dummy
    scoreboard objectives add abstract.chaser_ai.PlaceStart dummy
    scoreboard objectives add abstract.chaser_ai.PosCheckY dummy
    scoreboard objectives add abstract.chaser_ai.PlaceCoolTime dummy
    scoreboard objectives add abstract.chaser_ai.TillBridgeEnd dummy
