#> asset:mob/1004.zombified_piglin/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1004/tick

# 勝手に敵対する
    data modify entity @s AngryAt set from entity @p[distance=..64] UUID

# 壁破壊処理
    execute if predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/piglin/moveset/dig

# 継承元の処理を実行する
    function asset:mob/super.tick

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
