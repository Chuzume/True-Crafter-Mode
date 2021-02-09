#近距離ではネットばらまき
execute positioned ^ ^ ^-0.5 facing entity @p[distance=..7,tag=!T.Hard_Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.Hard_Moveset1 1
execute if entity @s[scores={T.Hard_Moveset1=40}] run playsound minecraft:entity.spider.death master @a ~ ~ ~ 1 2
execute if entity @s[scores={T.Hard_Moveset1=40}] run summon item ~ ~ ~ {Tags:["T.Hard_Net"],Motion:[0.0,0.5,0.0],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
execute if entity @s[scores={T.Hard_Moveset1=40}] run summon item ~0.7 ~ ~0.7 {Tags:["T.Hard_Net"],Motion:[0.1,0.5,0.1],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
execute if entity @s[scores={T.Hard_Moveset1=40}] run summon item ~-0.7 ~ ~-0.7 {Tags:["T.Hard_Net"],Motion:[-0.1,0.5,-0.1],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
execute if entity @s[scores={T.Hard_Moveset1=40}] run summon item ~0.7 ~ ~-0.7 {Tags:["T.Hard_Net"],Motion:[0.1,0.5,-0.1],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
execute if entity @s[scores={T.Hard_Moveset1=40}] run summon item ~-0.7 ~ ~0.7 {Tags:["T.Hard_Net"],Motion:[-0.1,0.5,0.1],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
scoreboard players reset @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1
#遠距離では正確に
execute positioned ^ ^ ^-0.5 facing entity @p[distance=7..16,tag=!T.Hard_Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.Hard_Moveset2 1
execute if entity @s[scores={T.Hard_Moveset2=40}] run playsound minecraft:entity.spider.death master @a ~ ~ ~ 1 2
execute if entity @s[scores={T.Hard_Moveset2=40}] run summon item ~ ~ ~ {Tags:["T.Hard_Net","T.Hard_Net0"],Motion:[0.0,0.0,0.0],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
effect give @s[scores={T.Hard_Moveset2=40}] slowness 1 9 true
scoreboard players reset @s[scores={T.Hard_Moveset2=40..}] T.Hard_Moveset2
