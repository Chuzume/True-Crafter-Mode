#> asset:object/enemy_part.ender_zealot_eye/register
#
# Objectのデータを指定
#
# @within function asset_manager:object/summon/register.m

# 継承(オプション)
    # data modify storage asset:object Extends append value 
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value "enemy_part.ender_zealot_eye"
# フィールド(オプション)
    # data modify storage asset:object Field.myValue set value 