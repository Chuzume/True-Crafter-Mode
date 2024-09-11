
# 接触時判定
    #execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] as @e[dx=0,team=!null,tag=!Sh.Beam_Spin,type=!#sheepinator:no_convert] at @s run function sheepinator:item/sheep_convert_beamer/hit


# パーティクル
    particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1

# 射線が通らなかったら通知
    execute if entity @s[distance=..30] unless block ~ ~ ~ #true_crafter_mode:no_collision run playsound minecraft:block.note_block.hat neutral @a ~ ~ ~ 1 1
    execute if entity @s[distance=..30] unless block ~ ~ ~ #true_crafter_mode:no_collision at @s run function true_crafter_mode:enemy/common/dig/move

# 前進
    execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] unless entity @e[dx=0,team=!null] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #true_crafter_mode:no_collision positioned ^ ^ ^1 run function true_crafter_mode:enemy/common/dig/player_check
    execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #true_crafter_mode:no_collision positioned ^ ^ ^1 run function true_crafter_mode:enemy/common/dig/player_check