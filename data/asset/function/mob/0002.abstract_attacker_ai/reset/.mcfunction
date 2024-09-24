#> asset:mob/0002.abstract_attacker_ai/reset/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2/reset

# スコアリセット
    scoreboard players reset @s TMCM.Tick
    scoreboard players reset @s TMCM.PosCheck.Y
    scoreboard players reset @s TMCM.SubAction

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
