#> true_crafter_mode:entity/mob/piglin/moveset/heal/tick
#
# 食う処理
#
# @within function true_crafter_mode:entity/mob/piglin/moveset/

# Tick加算
    scoreboard players add @s TMCM.SubAction 1

# サウンド
    execute if score @s TMCM.SubAction matches 10 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
    execute if score @s TMCM.SubAction matches 15 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
    execute if score @s TMCM.SubAction matches 20 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1

# 回復完了
    execute if entity @s[tag=TMCM.Piglin.Heal,scores={TMCM.SubAction=30}] run function true_crafter_mode:entity/mob/piglin/moveset/heal/finish
