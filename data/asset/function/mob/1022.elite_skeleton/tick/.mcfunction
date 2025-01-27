#> asset:mob/1022.elite_skeleton/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1022/tick

# 矢を変換
    execute if predicate true_crafter_mode:in_hostile run function asset:mob/1022.elite_skeleton/tick/shot_detect

# クールタイムに入ってたらスコアを減らす
    scoreboard players remove @s[scores={1022.CoolTime=0..}] 1022.CoolTime 1
    scoreboard players reset @s[scores={1022.CoolTime=..0}] 1022.CoolTime

# Super
    function asset:mob/super.tick
