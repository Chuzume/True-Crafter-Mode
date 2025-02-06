#> asset:mob/1025.wither/tick/dash/side/move
#
# 
#
# @within function asset:mob/1025.wither/tick/dash/side/

# 壁があったら移動をやめる
    execute on vehicle at @s if function asset:mob/1025.wither/tick/dash/side/check_collide run rotate @s ~ 0
    execute on vehicle at @s if function asset:mob/1025.wither/tick/dash/side/check_collide run scoreboard players set @s General.Mob.Tick 30

# 横に移動
    execute on vehicle at @s facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-150 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^0.5 ~ ~

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 2 1.2
    scoreboard players reset $Interval Temporary
