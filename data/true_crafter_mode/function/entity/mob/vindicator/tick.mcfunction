#> true_crafter_mode:entity/mob/vindicator/tick
#
# 
#
# @within function true_crafter_mode:tick

# スポーン時
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/vindicator/init

# 敵対状態なら
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/vindicator/moveset

# 壁越し検知処理
    function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/

# 誰とも敵対していない場合、スコアリセット
    execute if entity @s[predicate=!true_crafter_mode:in_hostile,scores={TMCM.Tick=60..}] run function true_crafter_mode:entity/mob/vindicator/stonrg_walk/reset
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/common_moveset/reset
