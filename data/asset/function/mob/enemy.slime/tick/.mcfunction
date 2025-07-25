#> asset:mob/enemy.slime/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 敵対時の処理
    execute if predicate lib:in_hostile run scoreboard players add @s General.Mob.Tick 1

# 一定時間後に大きくなる
    execute if score @s General.Mob.Tick matches 100.. run function asset:mob/call.m {method:inflate}

# 誰とも敵対していない場合、スコアリセット
    execute unless predicate lib:in_hostile run scoreboard players reset @s General.Mob.Tick
