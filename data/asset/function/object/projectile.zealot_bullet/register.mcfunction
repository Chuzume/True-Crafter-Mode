#> asset:object/projectile.zealot_bullet/register
#
# Objectのデータを指定
#
# @within function asset_manager:object/summon/register.m

# 継承(オプション)
    data modify storage asset:object Extends append value "abstract.basic_projectile"
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value "projectile.zealot_bullet"
# フィールド(オプション)
    data modify storage asset:object Field set value {Speed:1,Range:300,MovePerStep:0.2}
