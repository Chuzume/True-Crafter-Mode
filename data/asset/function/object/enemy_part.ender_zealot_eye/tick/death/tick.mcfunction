#> asset:object/enemy_part.ender_zealot_eye/tick/death/tick
#
# 
#
# @within function asset:object/enemy_part.ender_zealot_eye/tick/

# 加算
    scoreboard players add @s General.Object.Tick 1

# 破壊時サウンド
    execute if score @s General.Object.Tick matches 1 run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0.7
    execute if score @s General.Object.Tick matches 1 run playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 1 0.5
    execute if score @s General.Object.Tick matches 1 run playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 1 0.7

# 爆発寸前
    execute if score @s General.Object.Tick matches 10 run playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 1 0.8
    execute if score @s General.Object.Tick matches 10 run playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 1 1
    particle minecraft:reverse_portal ~ ~0.25 ~ 0.2 0.2 0.2 2 5 force @a[distance=..32]

# 爆発
    execute if score @s General.Object.Tick matches 60 run function asset:object/enemy_part.ender_zealot_eye/tick/death/explode
