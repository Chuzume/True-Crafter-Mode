#> asset:mob/enemy.wither/tick/skill/trap_laser/
#
# トラップレーザー
#
# @within function asset:mob/enemy.wither/tick/skill/branch

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとに召喚だ～
    execute if score @s enemy.wither.Phase matches 1 run scoreboard players operation $Interval Temporary %= $20 Const
    execute if score @s enemy.wither.Phase matches 3.. run scoreboard players operation $Interval Temporary %= $10 Const
    execute if score @s General.Mob.Tick matches 0..100 if score $Interval Temporary matches 0 anchored eyes positioned ^ ^ ^ facing entity @n[tag=TMCM.Target,distance=..48] feet run function asset:mob/enemy.wither/tick/skill/trap_laser/summon
    scoreboard players reset $Interval Temporary

# リセット
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/enemy.wither/tick/reset/
