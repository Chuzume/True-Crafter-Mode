#> asset:mob/enemy.wither_knight/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# クールタイムに入ってたらスコアを減らす
    scoreboard players remove @s[scores={enemy.wither_knight.CoolTime=0..}] enemy.wither_knight.CoolTime 1
    scoreboard players reset @s[scores={enemy.wither_knight.CoolTime=..0}] enemy.wither_knight.CoolTime

# Super
    function asset:mob/super.tick
