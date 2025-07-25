#> asset:mob/enemy.piglin_sword/in_hostile/heal/tick
#
# 
#
# @within function asset:mob/enemy.piglin_sword/in_hostile/

# Tick加算
    scoreboard players add @s enemy.piglin_sword.Tick 1

# ポーションを飲む
    execute if score @s enemy.piglin_sword.Tick matches 10 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
    execute if score @s enemy.piglin_sword.Tick matches 15 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
    execute if score @s enemy.piglin_sword.Tick matches 20 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1

# 耐火ポーション飲み終わり
    execute if score @s enemy.piglin_sword.Tick matches 30 run function asset:mob/enemy.piglin_sword/in_hostile/heal/end
