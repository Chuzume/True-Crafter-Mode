#> asset:mob/0001.abstract_hard_mob/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/1/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value true
# 継承(オプション)
    # data modify storage asset:mob Extends append value 
    # function asset:mob/extends

# ID (int)
    data modify storage asset:mob ID set value 1
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
