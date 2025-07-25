#> asset:mob/enemy.piglin_sword/tick/fire_resist/tick
#
# 
#
# @within function asset:mob/enemy.piglin_sword/tick/

# Tick加算
    scoreboard players add @s enemy.piglin_sword.Tick 1

# ポーションを飲む
    execute if score @s enemy.piglin_sword.Tick matches 10 run playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1
    execute if score @s enemy.piglin_sword.Tick matches 15 run playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1
    execute if score @s enemy.piglin_sword.Tick matches 20 run playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1

# 耐火ポーション飲み終わり
    execute if score @s enemy.piglin_sword.Tick matches 30 run function asset:mob/enemy.piglin_sword/tick/fire_resist/end
