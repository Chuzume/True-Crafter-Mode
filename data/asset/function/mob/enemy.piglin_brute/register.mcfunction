#> asset:mob/enemy.piglin_brute/register
#
# Mobのデータを指定
#
# @within function asset_manager:mob/summon/register.m

# 継承: 「火の熱」によって変わる
    execute if score $Difficulty Global matches ..2 run data modify storage asset:mob Extends append value "abstract.attacker_ai"
    execute if score $Difficulty Global matches 3.. run data modify storage asset:mob Extends append value "abstract.chaser_ai"
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value "enemy.piglin_brute"
# フィールド(オプション)
    data modify storage asset:mob Field.Damage.Shockwave set value 8
    data modify storage asset:mob Field.Damage.ShockwaveMelee set value 15
