#> asset:mob/0002.abstract_chaser_ai/tick/
#
# 敵対時専用のメソッドを持つAI
#
# @within asset:mob/alias/2/tick

# 敵対時のメソッド
    execute if predicate true_crafter_mode:in_hostile run function asset:mob/call.m {method:in_hostile}

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
