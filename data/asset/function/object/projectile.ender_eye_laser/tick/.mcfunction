#> asset:object/projectile.ender_eye_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2007/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 誘導！
    execute if score @s General.Object.Tick matches ..60 facing entity @p[distance=..48] eyes positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-100 facing entity @s feet positioned as @s run rotate @s ~ ~

# 予告線1
    execute if score @s General.Object.Tick matches ..60 run function asset:object/projectile.ender_eye_laser/tick/laser/alert

# 最終予告サウンド
    execute if score @s General.Object.Tick matches 60 run playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 5 1.5
    execute if score @s General.Object.Tick matches 60 run playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 5 1.7

# 予告線2
    execute if score @s General.Object.Tick matches 60..90 run function asset:object/projectile.ender_eye_laser/tick/laser/alert_red

# 発射
    execute if score @s General.Object.Tick matches 90 run function asset:object/projectile.ender_eye_laser/tick/laser/shoot

# 消える
    execute if score @s General.Object.Tick matches 110.. run function asset:object/projectile.ender_eye_laser/tick/death
