
#3連ファイアボールの代わりにデカいのを撃つ
execute if entity @e[type=small_fireball,distance=..1.6] run tag @s add T.Hard_Blaze_Shoot
execute if entity @s[tag=T.Hard_Blaze_Shoot] run summon minecraft:fireball ~ ~1 ~ {direction:[0.0,0.0,0.0],power:[0.0,-0.01,0.0],Tags:["T.Hard_Blazeball","T.Hard_Blazeball0"]}
execute if entity @s[tag=T.Hard_Blaze_Shoot] run playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 2 1.5
execute if entity @s[tag=T.Hard_Blaze_Shoot] run kill @e[type=small_fireball,distance=..1.6,limit=1,sort=nearest] 
tag @s[tag=T.Hard_Blaze_Shoot] remove T.Hard_Blaze_Shoot