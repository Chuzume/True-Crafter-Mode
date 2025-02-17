#> asset:mob/1024.ender_dragon/tick/skill/landing/landed/thunder/spread.m
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/landing/landed/thunder/summon

# データを元に、自分より下に召喚する
#    $spreadplayers ~ ~ 20 20 under $(Y) false @n[type=marker,tag=SpreadMarker,distance=..64]
    $say spreadplayers ~ ~ 20 20 under $(Y) false @n[type=marker,tag=SpreadMarker,distance=..64]
