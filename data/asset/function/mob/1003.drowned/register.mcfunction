#> asset:mob/1003.drowned/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/1003/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 1001
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 1003
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 