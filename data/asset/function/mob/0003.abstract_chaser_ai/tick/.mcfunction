#> asset:mob/0003.abstract_chaser_ai/tick/
#
# 自身の索敵性能にかかわらず、範囲内のプレイヤーを探すAI
#
# @within asset:mob/alias/3/tick

# 追跡AI
    function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/

# SuperTick
    function asset:mob/super.tick

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
