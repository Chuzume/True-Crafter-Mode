#> asset:mob/0004.ranged_switcher_ai/reset/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/4/reset

# スコアリセット
    scoreboard players reset @s 4.BackStep

# super
    function asset:mob/super.method

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
