#> asset:mob/abstract.chaser_ai/tick/search/end
#
# 
#
# @within function asset:mob/abstract.chaser_ai/tick/

# 頭の上をキル
    execute on passengers if entity @s[tag=TMCM.CustomAI] run tp @s ~ -1000 ~

# タグ解除
    tag @s remove 3.UsingSeachAI
