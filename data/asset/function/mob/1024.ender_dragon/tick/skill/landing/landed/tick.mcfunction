#> asset:mob/1024.ender_dragon/tick/skill/landing/landed/tick
#
# 着陸後のTick 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/landing/

# 最初に咆哮
    execute if score @s General.Mob.Tick matches 2 run function asset:mob/1024.ender_dragon/tick/skill/landing/landed/first

# Phase固定してポータルに張り付く
    data modify entity @s DragonPhase set value 5

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとに光の柱が！
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score @s General.Mob.Tick matches 2..100 if score $Interval Temporary matches 0 run function asset:mob/1024.ender_dragon/tick/skill/landing/landed/thunder/summon
    scoreboard players reset $Interval Temporary
