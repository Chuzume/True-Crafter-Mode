#> asset:mob/abstract.chaser_ai/tick/
#
# 自身の索敵性能にかかわらず、範囲内のプレイヤーを探すAI
#
# @within asset:mob/alias/3/tick

# 敵対していない状態のとき、範囲内にプレイヤーがいたら索敵AIを変更
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..64] unless entity @s[tag=3.UsingSeachAI] unless predicate lib:in_hostile run function asset:mob/abstract.chaser_ai/tick/search/start

# 乗られてる側の処理
    execute if entity @s[tag=3.UsingSeachAI] at @s run function asset:mob/abstract.chaser_ai/tick/search/tick

# 立ち往生したらブロック設置
    function asset:mob/abstract.chaser_ai/tick/place_block/

# SuperTick
    function asset:mob/super.tick
