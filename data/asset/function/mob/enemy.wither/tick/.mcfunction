#> asset:mob/enemy.wither/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 敵対時の動作
    execute if entity @s[tag=!enemy.wither.Transition.Phase3] if predicate true_crafter_mode:in_hostile run function asset:mob/enemy.wither/tick/in_hostile

# フェイズ移行動作
    execute if entity @s[tag=enemy.wither.Transition.Phase3] run function asset:mob/enemy.wither/tick/phase_transition/

# リセット
    execute if entity @s[tag=!enemy.wither.Transition.Phase3] unless predicate true_crafter_mode:in_hostile run function asset:mob/enemy.wither/tick/reset/
