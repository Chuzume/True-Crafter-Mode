#> asset:mob/1025.wither/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1025/tick

# 敵対時の動作
    execute if predicate true_crafter_mode:in_hostile run function asset:mob/1025.wither/tick/in_hostile

# リセット
    execute unless predicate true_crafter_mode:in_hostile run function asset:mob/1025.wither/tick/reset/
