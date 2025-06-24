#> asset:mob/enemy.zombified_piglin/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 勝手に敵対する
    data modify entity @s AngryAt set from entity @p[distance=..64] UUID

# 壁破壊処理
    execute if predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/piglin/moveset/dig

# 継承元の処理を実行する
    function asset:mob/super.tick
