#> asset:mob/0003.abstract_chaser_ai/tick/search/end
#
# 
#
# @within function asset:mob/0003.abstract_chaser_ai/tick/

# 頭の上をキル
    execute on passengers if entity @s[tag=TMCM.CustomAI] run function true_crafter_mode:entity/mob/common_moveset/void_kill

# タグ解除
    tag @s remove 3.UsingSeachAI
