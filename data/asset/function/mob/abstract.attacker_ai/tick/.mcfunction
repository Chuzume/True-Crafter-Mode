#> asset:mob/abstract.attacker_ai/tick/
#
# 敵対時専用のメソッドを持つAI
#
# @within asset:mob/alias/2/tick

# 敵対時のメソッド
    execute if predicate lib:in_hostile run function asset:mob/abstract.attacker_ai/tick/in_hostile

# 誰とも敵対していない場合、スコアリセット
    execute if entity @s[predicate=!lib:in_hostile] run function asset:mob/call.m {method:reset}
