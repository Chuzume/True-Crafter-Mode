#> asset:mob/1024.ender_dragon/tick/skill/homing/
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/branch

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとに射出
    scoreboard players operation $Interval Temporary %= $20 Const
    execute if score @s General.Mob.Tick matches 0..80 if score $Interval Temporary matches 0 run function asset:mob/1024.ender_dragon/tick/skill/homing/shoot
    scoreboard players reset $Interval Temporary

# リセット
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/1024.ender_dragon/tick/reset
