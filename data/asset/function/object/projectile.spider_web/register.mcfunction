#> asset:object/projectile.spider_web/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1001/register

# 継承(オプション)
    data modify storage asset:object Extends append value "abstract.gravity_projectile"
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value "projectile.spider_web"
# フィールド(オプション)
    # data modify storage asset:object Field.myValue set value 
