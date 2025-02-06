#> asset:mob/1027.wither_minion/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1027/tick

# クールタイムに入ってたらスコアを減らす
    scoreboard players remove @s[scores={1027.CoolTime=0..}] 1027.CoolTime 1
    scoreboard players reset @s[scores={1027.CoolTime=..0}] 1027.CoolTime

# Super
    function asset:mob/super.tick
