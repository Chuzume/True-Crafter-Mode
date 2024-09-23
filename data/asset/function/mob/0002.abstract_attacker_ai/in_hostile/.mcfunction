#> asset:mob/0002.abstract_chaser_ai/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2/in_hostile

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# 自身の敵対者からタグ解除
    tag @n[tag=TMCM.Target] remove TMCM.Target

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
