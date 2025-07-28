#> asset:mob/abstract.ranged_switcher_ai/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/abstract.ranged_switcher_ai.register

# 継承: 「焚き火の熱」によって変わる
    execute if score $Difficulty Global matches 2 run data modify storage asset:mob Extends append value "abstract.attacker_ai"
    execute if score $Difficulty Global matches 3.. run data modify storage asset:mob Extends append value "abstract.chaser_ai"
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value true
# ID (int)
    data modify storage asset:mob ID set value "abstract.ranged_switcher_ai"
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
