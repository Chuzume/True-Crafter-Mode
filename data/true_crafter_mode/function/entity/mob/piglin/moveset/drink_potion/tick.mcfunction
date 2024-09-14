#> true_crafter_mode:entity/mob/piglin/moveset/drink_potion/tick
#
# 耐火ポーション飲むときのTick処理
#
# @within function true_crafter_mode:entity/mob/piglin/tick

# Tick加算
    scoreboard players add @s TMCM.SubAction 1

# ポーションを飲む
    execute if score @s TMCM.SubAction matches 10 run playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1
    execute if score @s TMCM.SubAction matches 15 run playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1
    execute if score @s TMCM.SubAction matches 20 run playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1

# 耐火ポーション飲み終わり
    execute if score @s TMCM.SubAction matches 30 run function true_crafter_mode:entity/mob/piglin/moveset/drink_potion/end
