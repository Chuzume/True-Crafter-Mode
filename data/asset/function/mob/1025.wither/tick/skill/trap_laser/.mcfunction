#> asset:mob/1025.wither/tick/skill/trap_laser/
#
# トラップレーザー
#
# @within function asset:mob/1025.wither/tick/skill/branch

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとに召喚だ～
    execute if score @s 1025.Phase matches 1 run scoreboard players operation $Interval Temporary %= $20 Const
    execute if score @s 1025.Phase matches 2.. run scoreboard players operation $Interval Temporary %= $10 Const
    execute if score @s General.Mob.Tick matches 0..100 if score $Interval Temporary matches 0 anchored eyes positioned ^ ^ ^ facing entity @n[tag=TMCM.Target,distance=..64] feet run function asset:mob/1025.wither/tick/skill/trap_laser/summon
    scoreboard players reset $Interval Temporary

# リセット
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/1025.wither/tick/reset/
