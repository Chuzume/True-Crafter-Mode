#> true_crafter_mode:entity/mob/witch/tick
#
# Tick処理
#
# @within function true_crafter_mode:tick

# 敵対時の動作
    execute if predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/witch/moveset/main

# 壁越し検知処理
    function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/

# 敵対してなければリセット
    execute unless predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/common_moveset/reset
