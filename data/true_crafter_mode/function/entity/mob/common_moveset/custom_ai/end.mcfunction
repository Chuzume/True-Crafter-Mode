#> true_crafter_mode:entity/mob/common_moveset/custom_ai/end
#
# 上のAIを片付ける
#
# @within function true_crafter_mode:entity/mob/zombie/tick

# 頭の上をキル
    execute on passengers if entity @s[type=piglin,tag=TMCM.PiglinAI] run function true_crafter_mode:entity/mob/common_moveset/void_kill

# タグ解除
    tag @s remove TMCM.UsingPiglinAI