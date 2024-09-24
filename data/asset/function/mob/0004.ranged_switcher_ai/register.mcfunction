#> asset:mob/0004.ranged_switcher_ai/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/4/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 3
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 4
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
