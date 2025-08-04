#> asset:object/projectile.zealot_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=400..}]

# パーティクル
    particle electric_spark ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..48]

# 加速処理
    execute if score @s General.Object.Tick matches 20 run data modify storage asset:context this.Speed set value 1
    execute if score @s General.Object.Tick matches 25 run data modify storage asset:context this.Speed set value 2
    execute if score @s General.Object.Tick matches 30 run data modify storage asset:context this.Speed set value 3

# 誘導！
    execute unless score @s General.Object.Tick matches 35.. facing entity @p[distance=..48] eyes positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-60 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# 光るの解除する
    data modify entity @s[nbt={Glowing:1b}] Glowing set value false

# Super!
    function asset:object/super.tick
