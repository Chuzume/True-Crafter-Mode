#> asset:mob/enemy.ender_zealot/tick/in_hostile/skill/shot/
#
# 
#
# @within function asset:mob/enemy.ender_zealot/tick/in_hostile/

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとに射出
    scoreboard players operation $Interval Temporary %= $20 Const
    execute if score $Interval Temporary matches 0 anchored eyes positioned ^ ^ ^ run function asset:mob/enemy.ender_zealot/tick/in_hostile/skill/shot/shoot
    scoreboard players reset $Interval Temporary
