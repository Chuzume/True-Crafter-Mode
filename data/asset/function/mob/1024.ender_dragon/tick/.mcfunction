#> asset:mob/1024.ender_dragon/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1024/tick

# Tick加算
    scoreboard players add @s General.Mob.Tick 1


# 定期的にDragonPhaseを宣言してもらう
#    execute if score @s General.Mob.Tick matches 40 run tellraw @p {"entity":"@s","nbt":"DragonPhase"}
#    execute if score @s General.Mob.Tick matches 40 run scoreboard players reset @s General.Mob.Tick


# リセット
