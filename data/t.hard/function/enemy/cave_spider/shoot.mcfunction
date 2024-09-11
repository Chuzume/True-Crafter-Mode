playsound minecraft:entity.spider.death master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.llama.spit hostile @a ~ ~ ~ 1.5 2
summon item ~ ~ ~ {Tags:["t.hard_PoisonBallInit"],Motion:[0.0,0.0,0.0],Item:{id:"minecraft:slime_ball",count:1b},Age:5900,PickupDelay:9999,Fire:2s}
execute as @e[type=item,tag=t.hard_PoisonBallInit] at @s run function t.hard:enemy/cave_spider/poison_ball/init
effect give @s slowness 1 9 true
scoreboard players reset @s t.hardMoveset1