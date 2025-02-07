#> asset:mob/1025.wither/tick/skill/charge/attack
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/charge/

# 私が実行者です
    tag @s add This

# 演出
    particle dust_color_transition{from_color:[0.2,0.2,0.2],scale:1.5,to_color:[0.878,0.969,0.576]} ~ ~2 ~ 0.7 1 0.7 1 20 force @a[distance=..64]

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1 0.5
    scoreboard players reset $Interval Temporary

# 移動
    execute if score @s General.Mob.Tick matches 15..30 on vehicle facing entity @n[tag=TMCM.Target,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^1 ~ ~
    execute if score @s General.Mob.Tick matches 30..40 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^0.5
    execute if score @s General.Mob.Tick matches 40..45 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^0.3
    execute if score @s General.Mob.Tick matches 45..50 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^0.1

# ダメージ
    execute positioned ^ ^ ^1 positioned ~-1 ~-1 ~-1 as @a[dx=1,dy=1,dz=1] run damage @s 10 minecraft:mob_attack by @n[type=wither,tag=This,distance=..64]

# リセット
    tag @s remove This
