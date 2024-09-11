playsound minecraft:entity.spider.death master @a ~ ~ ~ 2 2
summon item ~ ~ ~ {Tags:["t.hard_Net"],Motion:[0.0,0.5,0.0],Item:{id:"minecraft:cobweb",count:1b},Age:5900,PickupDelay:9999}
summon item ~0.7 ~ ~0.7 {Tags:["t.hard_Net"],Motion:[0.1,0.5,0.1],Item:{id:"minecraft:cobweb",count:1b},Age:5900,PickupDelay:9999}
summon item ~-0.7 ~ ~-0.7 {Tags:["t.hard_Net"],Motion:[-0.1,0.5,-0.1],Item:{id:"minecraft:cobweb",count:1b},Age:5900,PickupDelay:9999}
summon item ~0.7 ~ ~-0.7 {Tags:["t.hard_Net"],Motion:[0.1,0.5,-0.1],Item:{id:"minecraft:cobweb",count:1b},Age:5900,PickupDelay:9999}
summon item ~-0.7 ~ ~0.7 {Tags:["t.hard_Net"],Motion:[-0.1,0.5,0.1],Item:{id:"minecraft:cobweb",count:1b},Age:5900,PickupDelay:9999}
scoreboard players reset @s t.hardMoveset1