#> asset:mob/1006.skeleton/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/1006/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 3
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 1006
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
