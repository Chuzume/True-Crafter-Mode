#> asset:mob/1025.wither/tick/skill/homing/
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/branch

# 距離を開いてくる
    execute if score @s General.Mob.Tick matches 0..5 on vehicle facing entity @n[tag=TMCM.Target,distance=..16] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^-1 ~ ~

# ウソ慣性
    execute if score @s General.Mob.Tick matches 5..10 if entity @n[tag=TMCM.Target,distance=..32] on vehicle run tp @s ^ ^ ^-0.5
    execute if score @s General.Mob.Tick matches 10..15 if entity @n[tag=TMCM.Target,distance=..32] on vehicle run tp @s ^ ^ ^-0.3
    execute if score @s General.Mob.Tick matches 15..20 if entity @n[tag=TMCM.Target,distance=..32] on vehicle run tp @s ^ ^ ^-0.1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとに射出
    execute if score @s 1025.Phase matches 1 run scoreboard players operation $Interval Temporary %= $6 Const
    execute if score @s 1025.Phase matches 2.. run scoreboard players operation $Interval Temporary %= $3 Const
    execute if score @s General.Mob.Tick matches 0..24 if score $Interval Temporary matches 0 anchored eyes positioned ^ ^ ^ facing entity @n[tag=TMCM.Target,distance=..64] feet run function asset:mob/1025.wither/tick/skill/homing/shoot
    scoreboard players reset $Interval Temporary

# リセット
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1025.wither/tick/reset/

# 本体の向き変更
#    execute facing entity @n[tag=TMCM.Target,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~
