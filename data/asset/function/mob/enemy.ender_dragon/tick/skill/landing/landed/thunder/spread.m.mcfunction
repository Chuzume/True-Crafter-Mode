#> asset:mob/enemy.ender_dragon/tick/skill/landing/landed/thunder/spread.m
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/skill/landing/landed/thunder/summon

# データを元に、自分より下に召喚する
#    $spreadplayers ~ ~ 20 20 under $(Y) false @n[type=marker,tag=SpreadMarker,distance=..48]
    $say spreadplayers ~ ~ 20 20 under $(Y) false @n[type=marker,tag=SpreadMarker,distance=..48]
