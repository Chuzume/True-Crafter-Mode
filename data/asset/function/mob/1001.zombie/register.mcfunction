#> asset:mob/1001.zombie/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/1001/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    # data modify storage asset:mob IsAbstract set value false
# 継承(オプション)
    # data modify storage asset:mob Extends append value 
    # function asset:mob/extends

# ID (int)
    data modify storage asset:mob ID set value 1001
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 