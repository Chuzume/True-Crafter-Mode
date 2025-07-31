#> asset:mob/enemy.elite_skeleton/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 矢を変換
    execute if predicate lib:in_hostile run function asset:mob/enemy.elite_skeleton/tick/shot_detect

# クールタイムに入ってたらスコアを減らす
    scoreboard players remove @s[scores={enemy.elite_skeleton.CoolTime=0..}] enemy.elite_skeleton.CoolTime 1
    scoreboard players reset @s[scores={enemy.elite_skeleton.CoolTime=..0}] enemy.elite_skeleton.CoolTime

# Super
    function asset:mob/super.tick
