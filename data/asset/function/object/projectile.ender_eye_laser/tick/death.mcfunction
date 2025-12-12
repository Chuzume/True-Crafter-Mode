#> asset:object/projectile.ender_eye_laser/tick/death
#
# 消える
#
# @within function asset:object/projectile.ender_eye_laser/tick/

particle dust{color:[0.8,0.2,1.0],scale:2.0} ~ ~ ~ 0.8 0.8 0.8 0 30 force @a[distance=..32]
#playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1
kill @s
