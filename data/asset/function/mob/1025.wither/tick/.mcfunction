#> asset:mob/1025.wither/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1025/tick

# 敵対時の動作
    execute if entity @s[tag=!1025.Transition.Phase3] if predicate true_crafter_mode:in_hostile run function asset:mob/1025.wither/tick/in_hostile

# フェイズ移行動作
    execute if entity @s[tag=1025.Transition.Phase3] run function asset:mob/1025.wither/tick/phase_transition/

# リセット
    execute if entity @s[tag=!1025.Transition.Phase3] unless predicate true_crafter_mode:in_hostile run function asset:mob/1025.wither/tick/reset/
