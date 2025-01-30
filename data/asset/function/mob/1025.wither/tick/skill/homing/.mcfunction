#> asset:mob/1025.wither/tick/skill/homing/
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/branch

# 距離を開いてくる
    execute if score @s General.Mob.Tick matches 0..10 on vehicle facing entity @n[tag=TMCM.Target,distance=..16] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^-1 ~ ~

# ウソ慣性
    execute if score @s General.Mob.Tick matches 10..20 on vehicle run tp @s ^ ^ ^-0.5
    execute if score @s General.Mob.Tick matches 20..25 on vehicle run tp @s ^ ^ ^-0.3
    execute if score @s General.Mob.Tick matches 25..30 on vehicle run tp @s ^ ^ ^-0.1

# 本体の向き変更
#    execute facing entity @n[tag=TMCM.Target,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~
