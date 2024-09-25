#> asset:mob/1015.piglin_sword/in_hostile/heal/tick
#
# 
#
# @within function asset:mob/1015.piglin_sword/in_hostile/

# Tick加算
    scoreboard players add @s 1015.Tick 1

# ポーションを飲む
    execute if score @s 1015.Tick matches 10 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
    execute if score @s 1015.Tick matches 15 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
    execute if score @s 1015.Tick matches 20 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1

# 耐火ポーション飲み終わり
    execute if score @s 1015.Tick matches 30 run function asset:mob/1015.piglin_sword/in_hostile/heal/end
