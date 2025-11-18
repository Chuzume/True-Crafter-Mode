#> asset:mob/enemy.wither_knight/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 最初は何もしてこないが、しばらくすると動き出す
    execute unless score @s enemy.wither_knight.SpawnTime matches 60.. run scoreboard players add @s enemy.wither_knight.SpawnTime 1
    execute unless score @s enemy.wither_knight.SpawnTime matches 60.. facing entity @p[distance=..32] eyes run rotate @s ~ ~
    execute unless score @s enemy.wither_knight.SpawnTime matches 60.. run particle minecraft:end_rod ~ ~1.5 ~ 0.2 0.7 0.3 0 1
    execute if score @s enemy.wither_knight.SpawnTime matches 60 run function asset:mob/enemy.wither_knight/tick/start_move

# クールタイムに入ってたらスコアを減らす
    scoreboard players remove @s[scores={enemy.wither_knight.CoolTime=0..}] enemy.wither_knight.CoolTime 1
    scoreboard players reset @s[scores={enemy.wither_knight.CoolTime=..0}] enemy.wither_knight.CoolTime

# Super
    function asset:mob/super.tick
