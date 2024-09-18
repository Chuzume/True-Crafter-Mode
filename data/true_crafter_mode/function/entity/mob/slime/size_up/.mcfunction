#> true_crafter_mode:entity/mob/slime/size_up/
#
# 
#
# @within function true_crafter_mode:entity/mob/slime/moveset

# 保存しておいたスコアに1を足し、そのサイズになる
    scoreboard players add @s TMCM.SubAction 1 
    execute store result entity @s Size int 1 run scoreboard players get @s TMCM.SubAction

# 演出
    particle explosion ~ ~0.8 ~ 0 0 0 0 1
    particle instant_effect ~ ~0.8 ~ 0 0 0 0.1 5
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 1.5 0.75

# リセット
    scoreboard players reset @s TMCM.Tick