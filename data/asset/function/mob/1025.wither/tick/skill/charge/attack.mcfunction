#> asset:mob/1025.wither/tick/skill/charge/attack
#
# 
#
# @within function asset:mob/1025.wither/tick/skill/charge/

# 私が実行者です
    tag @s add This

# 演出
    particle dust_color_transition{from_color:[0.2,0.2,0.2],scale:1,to_color:[0.0,1.0,1.0]} ~ ~2 ~ 0.7 1 0.7 1 20 force @a[distance=..64]

# 移動
    execute if score @s General.Mob.Tick matches 15..40 on vehicle facing entity @n[tag=TMCM.Target,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^1 ~ ~
    execute if score @s General.Mob.Tick matches 40..50 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^0.5
    execute if score @s General.Mob.Tick matches 50..55 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^0.3
    execute if score @s General.Mob.Tick matches 55..60 if entity @n[tag=TMCM.Target,distance=..32] on vehicle at @s run tp @s ^ ^ ^0.1

# ダメージ
    execute positioned ^ ^ ^1 positioned ~-1 ~-1 ~-1 as @a[dx=1,dy=1,dz=1] run damage @s 10 minecraft:mob_attack by @n[type=wither,tag=This,distance=..64]

# リセット
    tag @s remove This
