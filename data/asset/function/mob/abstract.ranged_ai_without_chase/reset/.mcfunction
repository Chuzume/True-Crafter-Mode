#> asset:mob/ranged_ai_without_chase/reset/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/4/reset

# スコアリセット
    scoreboard players reset @s 4.BackStep

# super
    function asset:mob/super.method
