#> asset:mob/enemy.ender_dragon/tick/phase_2/particle
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/phase_2/tick

$execute at @e[type=item_display,distance=..48,tag=Object.enemy_part.ender_zealot_eye] run particle trail{color:[0.4,0.2,0.5],target:$(Pos),duration:20} ~ ~ ~ 0.1 0.1 0.1 1 5 force @a[distance=..48]
