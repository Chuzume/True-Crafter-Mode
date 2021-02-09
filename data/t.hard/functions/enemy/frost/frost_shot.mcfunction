#氷結弾
execute as @s at @s run tp @s[tag=T.Hard_Shot0] ~ ~ ~ facing entity @p feet
execute as @s at @s run tp @s[tag=T.Hard_Shot0] ~ ~ ~ ~ ~-7
tag @s[tag=T.Hard_Shot0] remove T.Hard_Shot0

#直進
execute if entity @s[tag=T.Hard_Shot1,tag=!T.Hard_Shot0] run tp @s ^ ^ ^0.7
execute if entity @s[tag=T.Hard_Shot2,tag=!T.Hard_Shot0] run tp @s ^0.07 ^ ^0.7
execute if entity @s[tag=T.Hard_Shot3,tag=!T.Hard_Shot0] run tp @s ^-0.07 ^ ^0.7

#パーティクル
particle minecraft:falling_dust snow ~ ~ ~ 0.1 0.1 0.1 0 2
particle minecraft:dust 0.7 1 1 1.5 ~ ~ ~ 0.25 0.25 0.25 0 1

#ヒット判定
scoreboard players add @s BulletRemain 1
kill @e[tag=T.Hard_Shot,scores={BulletRemain=100..}] 
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add T.Hard_Hit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add T.Hard_HiT.Player
execute unless block ^ ^ ^0.5 #t.hard:no_collision run tag @s add T.Hard_Hit
execute if entity @s[tag=T.Hard_HiT.Player] run effect give @p slowness 10 1
execute if entity @s[tag=T.Hard_HiT.Player] run effect give @p resistance 1 0 true
execute if entity @s[tag=T.Hard_HiT.Player] run effect give @p instant_damage 1
execute if entity @s[tag=T.Hard_Hit] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=T.Hard_Hit] run particle poof ~ ~ ~ 0 0 0 0.1 5
kill @s[tag=T.Hard_Hit]
