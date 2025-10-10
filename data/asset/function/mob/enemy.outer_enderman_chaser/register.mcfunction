#> asset:mob/enemy.outer_enderman_chaser/register
#
# Mobのデータを指定
#
# @within function asset_manager:mob/summon/register.m

# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value "enemy.outer_enderman_chaser"
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
