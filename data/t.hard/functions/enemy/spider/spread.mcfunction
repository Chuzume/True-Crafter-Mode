playsound minecraft:entity.spider.death master @a ~ ~ ~ 2 2
summon item ~ ~ ~ {Tags:["T.Hard_Net"],Motion:[0.0,0.5,0.0],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
summon item ~0.7 ~ ~0.7 {Tags:["T.Hard_Net"],Motion:[0.1,0.5,0.1],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
summon item ~-0.7 ~ ~-0.7 {Tags:["T.Hard_Net"],Motion:[-0.1,0.5,-0.1],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
summon item ~0.7 ~ ~-0.7 {Tags:["T.Hard_Net"],Motion:[0.1,0.5,-0.1],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
summon item ~-0.7 ~ ~0.7 {Tags:["T.Hard_Net"],Motion:[-0.1,0.5,0.1],Item:{id:"minecraft:cobweb",Count:1b},Age:5900,PickupDelay:9999}
scoreboard players reset @s T.HardMoveset1