#氷結弾
execute as @s at @s run tp @s[tag=t.hardShot0] ~ ~ ~ facing entity @p feet
execute as @s at @s run tp @s[tag=t.hardShot0] ~ ~ ~ ~ ~-7
tag @s[tag=t.hardShot0] remove t.hardShot0

#直進
execute if entity @s[tag=t.hardShot1,tag=!t.hardShot0] run tp @s ^ ^ ^0.7
execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] run tp @s ^0.07 ^ ^0.7
execute if entity @s[tag=t.hardShot3,tag=!t.hardShot0] run tp @s ^-0.07 ^ ^0.7

#パーティクル
particle falling_dust{block_state:{Name:snow}} ~ ~ ~ 0.1 0.1 0.1 0 2
particle dust{color:[0.7,1.0,1.0],scale:1.5} ~ ~ ~ 0.25 0.25 0.25 0 1

#ヒット判定
scoreboard players add @s BulletRemain 1
kill @e[tag=t.hardShot,scores={BulletRemain=100..}] 
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add t.hardHit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add t.hardHiT.Player
execute unless block ^ ^ ^0.5 #t.hard:no_collision run tag @s add t.hardHit
execute if entity @s[tag=t.hardHiT.Player] run effect give @p slowness 10 1
execute if entity @s[tag=t.hardHiT.Player] run effect give @p resistance 1 0 true
execute if entity @s[tag=t.hardHiT.Player] run effect give @p instant_damage 1
execute if entity @s[tag=t.hardHit] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=t.hardHit] run particle poof ~ ~ ~ 0 0 0 0.1 5
kill @s[tag=t.hardHit]
