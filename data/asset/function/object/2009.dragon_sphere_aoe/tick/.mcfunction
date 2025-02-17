#> asset:object/2009.dragon_sphere_aoe/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2009/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1


# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# 数Tickごとに実行
    scoreboard players operation $Interval Temporary %= $20 Const
    
# 一定時間後、一定の周期で範囲内の対象に負傷1を与える
    execute if score @s General.Object.Tick matches 10.. if score $Interval Temporary matches 0 run effect give @a[distance=..3] instant_damage 1 0

# もくもく…
    particle minecraft:dragon_breath ~ ~ ~ 1.5 1.5 1.5 0.01 10 force @a[distance=..32]

# 消滅処理
    kill @s[scores={General.Object.Tick=140..}]

# リセット
    scoreboard players reset $Interval Temporary
