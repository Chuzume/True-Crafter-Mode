#> true_crafter_mode:entity/mob/common_moveset/custom_ai/tick
#
# 持ち主が死んだら消える処理
#
# @within function true_crafter_mode:tick

# 自分の持ち主にタグ付与
    execute on vehicle run tag @s add TMCM.CustomAI.Owner

# 持ち主がいないと分かったら消える
    execute unless entity @n[tag=TMCM.CustomAI.Owner] run function true_crafter_mode:entity/mob/common_moveset/void_kill

# 持ち主からタグを奪う
    execute on vehicle run tag @s[tag=SheathOwner] remove TMCM.CustomAI.Owner
