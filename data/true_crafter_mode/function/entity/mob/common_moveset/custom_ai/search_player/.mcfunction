#> true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/
#
# これを実行させると、無理やりプレイヤーを探す処理が動く
#
# @within function true_crafter_mode:entity/mob/zombie/tick

# 誰とも敵対しておらず、かつ付近に誰かいるならそいつを探す
    execute if entity @p[tag=!TMCM.Exception,distance=..64] unless entity @s[tag=TMCM.UsingCustomAI] unless predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/start

# 乗られてる側の処理
    execute if entity @s[tag=TMCM.UsingCustomAI] at @s run function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/tick_owner

# やること終わったら解除
    execute if entity @s[tag=TMCM.UsingCustomAI,predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/common_moveset/custom_ai/end
    execute if entity @s[tag=TMCM.UsingCustomAI] unless entity @p[tag=!TMCM.Exception,distance=..64] run function true_crafter_mode:entity/mob/common_moveset/custom_ai/end
