#> asset:mob/enemy.zombified_piglin/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/enemy.register

# 継承: 「火の熱」によって変わる。流石に火の熱3でもチェイサーAIなのはカスすぎる気がした
    execute if score $Difficulty Global matches 4.. run data modify storage asset:mob Extends append value "enemy.zombie"
    execute if score $Difficulty Global matches 4.. run function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value "enemy.zombified_piglin"
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
