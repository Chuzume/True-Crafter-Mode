#> asset:mob/enemy.ender_dragon/tick/skill/landing/landed/first
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/skill/landing/landed/tick

playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 2 2
playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 2 1
data modify entity @s[scores={enemy.ender_dragon.Phase=2}] Invulnerable set value false
