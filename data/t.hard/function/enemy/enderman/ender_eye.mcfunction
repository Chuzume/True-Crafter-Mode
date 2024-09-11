particle dust{color:[1.0,0.0,1.0],scale:1} ~ ~0.68 ~ 0 0 0 0 1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1.5 0
#Boundタグを近くのプレイヤーの座標に
data modify entity @s BoundX set from entity @p[distance=..20] Pos[0]
data modify entity @s BoundY set from entity @p[distance=..20] Pos[1]
data modify entity @s BoundZ set from entity @p[distance=..20] Pos[2]