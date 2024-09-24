#> asset:mob/0003.abstract_chaser_ai/tick/
#
# 自身の索敵性能にかかわらず、範囲内のプレイヤーを探すAI
#
# @within asset:mob/alias/3/tick

# 追跡AI
#    function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/

# 敵対していない状態のとき、範囲内にプレイヤーがいたら索敵AIを変更
    execute if entity @p[tag=!TMCM.Exception,distance=..64] unless entity @s[tag=3.UsingSeachAI] unless predicate true_crafter_mode:in_hostile run function asset:mob/0003.abstract_chaser_ai/tick/search/start

# 乗られてる側の処理
    execute if entity @s[tag=3.UsingSeachAI] at @s run function asset:mob/0003.abstract_chaser_ai/tick/search/tick

# SuperTick
    function asset:mob/super.tick

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
