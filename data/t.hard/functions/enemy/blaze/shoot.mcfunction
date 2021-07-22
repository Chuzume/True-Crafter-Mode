 summon armor_stand ~ ~ ~ {Tags:["T.Hard_BlazeBulletInit"],Small:1b,Marker:1b,Invisible:1b}
 execute as @e[type=armor_stand,tag=T.Hard_BlazeBulletInit] run function t.hard:enemy/blaze/fireball/init
 playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 2.5 1.5
 tag @e[type=small_fireball,tag=!T_HardAlreadyInit,distance=..1.6,limit=1,sort=nearest] add T.HardAlreadyInit