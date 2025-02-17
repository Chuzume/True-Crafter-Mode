#> asset:mob/1024.ender_dragon/tick/skill/landing/landed/first
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/skill/landing/landed/tick

playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 2 2
playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 2 1
data modify entity @s Invulnerable set value false
