#> asset:mob/0002.abstract_chaser_ai/tick/
#
# 敵対者にタグを付与し、敵対時専用のメソッドを持つAI
#
# @within asset:mob/alias/2/tick

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# 敵対時のメソッド
    execute if predicate true_crafter_mode:in_hostile run function method

# 自身の敵対者からタグ解除
    tag @n[tag=TMCM.Target] remove TMCM.Target

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
