#> true_crafter_mode:entity/mob/skeleton/init/elite/skeleton/
#
# エリート化
#
# @within function true_crafter_mode:entity/mob/skeleton/init/

# スケルトン
    execute if entity @s[type=skeleton] run function true_crafter_mode:entity/mob/skeleton/init/elite/skeleton

# ストレイ
    execute if entity @s[type=stray] run function true_crafter_mode:entity/mob/skeleton/init/elite/stray