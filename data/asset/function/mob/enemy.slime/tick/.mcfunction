#> asset:mob/enemy.slime/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 敵対時の処理
    execute if predicate lib:in_hostile run scoreboard players add @s General.Mob.Tick 1

# 周囲の同族の数を数えて、限界以上だったら膨張はやめる
    execute store result score @s enemy.slime.Count run execute if entity @e[type=slime,distance=..16]
    execute if score @s enemy.slime.Count matches 6.. run scoreboard players reset @s General.Mob.Tick

# 一定時間後に大きくなる
    execute if score @s[nbt=!{Size:0}] General.Mob.Tick matches 100.. run function asset:mob/call.m {method:inflate}
    execute if score @s[nbt={Size:0}] General.Mob.Tick matches 160.. run function asset:mob/call.m {method:inflate}

# 誰とも敵対していない場合、スコアリセット
    execute unless predicate lib:in_hostile run scoreboard players reset @s General.Mob.Tick
