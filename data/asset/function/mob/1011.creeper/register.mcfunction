#> asset:mob/1011.creeper/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/1011/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 2
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 1011
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
