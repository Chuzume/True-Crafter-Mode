#> asset:mob/abstract.ranged_switcher_ai/reset/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/abstract.ranged_switcher_ai.reset

# スコアリセット
    scoreboard players reset @s abstract.ranged_switcher_ai.BackStep

# super
    function asset:mob/super.method
