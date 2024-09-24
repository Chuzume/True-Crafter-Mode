#> asset:mob/0002.abstract_attacker_ai/tick/in_hostile
#
# 敵対者にタグ付与して、メソッド実行
#
# @within function asset:mob/0002.abstract_attacker_ai/tick/

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# 敵対時の処理
    function asset:mob/call.m {method:in_hostile}

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target
