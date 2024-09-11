#氷結弾
execute as @s at @s run tp @s[tag=T.HardShot0] ~ ~ ~ facing entity @p feet
execute as @s at @s run tp @s[tag=T.HardShot0] ~ ~ ~ ~ ~-7
tag @s[tag=T.HardShot0] remove T.HardShot0

#直進
execute if entity @s[tag=T.HardShot1,tag=!T.HardShot0] run tp @s ^ ^ ^0.7
execute if entity @s[tag=T.HardShot2,tag=!T.HardShot0] run tp @s ^0.07 ^ ^0.7
execute if entity @s[tag=T.HardShot3,tag=!T.HardShot0] run tp @s ^-0.07 ^ ^0.7

#パーティクル
particle minecraft:falling_dust snow ~ ~ ~ 0.1 0.1 0.1 0 2
particle minecraft:dust 0.7 1 1 1.5 ~ ~ ~ 0.25 0.25 0.25 0 1

#ヒット判定
scoreboard players add @s BulletRemain 1
kill @e[tag=T.HardShot,scores={BulletRemain=100..}] 
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add T.HardHit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add T.HardHiT.Player
execute unless block ^ ^ ^0.5 #t.hard:no_collision run tag @s add T.HardHit
execute if entity @s[tag=T.HardHiT.Player] run effect give @p slowness 10 1
execute if entity @s[tag=T.HardHiT.Player] run effect give @p resistance 1 0 true
execute if entity @s[tag=T.HardHiT.Player] run effect give @p instant_damage 1
execute if entity @s[tag=T.HardHit] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=T.HardHit] run particle poof ~ ~ ~ 0 0 0 0.1 5
kill @s[tag=T.HardHit]
