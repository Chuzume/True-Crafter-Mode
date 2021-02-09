particle minecraft:dust 1 0 1 1 ~ ~0.68 ~ 0 0 0 0 1
particle minecraft:witch ~ ~0.68 ~ 0 0 0 0 1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1.5 0
#ショットでドラゴンを援護
execute if entity @a[tag=!T.Hard_Exception,distance=5..20] run scoreboard players add @s T.Hard_Moveset1 1 
execute if entity @s[scores={T.Hard_Moveset1=40..}] if block ~ ~ ~ #t.hard:no_collision run summon armor_stand ~ ~0.68 ~ {Marker:1b,Invisible:1b,Tags:[T.Hard_EyeShot,T.Hard_Shot2,T.Hard_Shot0],DisabledSlots:4144959}
execute if entity @s[scores={T.Hard_Moveset1=40..}] if block ~ ~ ~ #t.hard:no_collision run playsound entity.ender_dragon.shoot hostile @p ~ ~ ~ 2 2
scoreboard players reset @s[scores={T.Hard_Moveset1=40..}]
#Boundタグを近くのプレイヤーの座標に
data modify entity @s BoundX set from entity @p[distance=..20] Pos[0]
data modify entity @s BoundY set from entity @p[distance=..20] Pos[1]
data modify entity @s BoundZ set from entity @p[distance=..20] Pos[2]