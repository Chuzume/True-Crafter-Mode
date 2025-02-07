#> asset:mob/1025.wither/tick/skill/charge/
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/branch

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0..15 on vehicle facing entity @n[tag=TMCM.Target,distance=..8] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^-0.05 ~ ~
    execute if score @s General.Mob.Tick matches 0..15 facing entity @n[tag=TMCM.Target,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~

# ちょっと後ろに下がりつつチャージ
    execute if score @s General.Mob.Tick matches 0..5 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^-0.5
    execute if score @s General.Mob.Tick matches 5..10 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^-0.3
    execute if score @s General.Mob.Tick matches 10..15 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^-0.1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 突進
    execute if score @s General.Mob.Tick matches 15..50 run function asset:mob/1025.wither/tick/skill/charge/attack

# リセット
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1025.wither/tick/reset/

# 本体の向き変更
#    execute facing entity @n[tag=TMCM.Target,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~
