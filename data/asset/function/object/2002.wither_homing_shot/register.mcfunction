#> asset:object/2002.wither_homing_shot/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2002/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 2002
# フィールド(オプション)
    data modify storage asset:object Field set value {Speed:1,Range:100,MovePerStep:0.1}
