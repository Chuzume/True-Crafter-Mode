#> asset:mob/enemy.ender_dragon/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/enemy.register

# 継承(オプション)
    # data modify storage asset:mob Extends append value 
    # function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value "enemy.ender_dragon"
# フィールド(オプション)
    data modify storage asset:mob Field.Skill.List set value [0]
