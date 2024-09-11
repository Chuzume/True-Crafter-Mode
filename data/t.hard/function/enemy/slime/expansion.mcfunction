# 巨大化する
    scoreboard players add @s t.hardMoveset2 1 
    particle explosion ~ ~0.8 ~ 0 0 0 0 1
    particle instant_effect ~ ~0.8 ~ 0 0 0 0.1 5
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 1.5 0.75
    execute store result entity @s Size int 1 run scoreboard players get @s t.hardMoveset2