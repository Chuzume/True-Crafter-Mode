#エンドラの貫通ダメージ弾
execute as @s at @s run tp @s[tag=t.hardShot0] ~ ~ ~ facing entity @p feet
execute as @s at @s run tp @s[tag=t.hardShot0] ~ ~ ~ ~ ~-1
tag @s[tag=t.hardShot0] remove t.hardShot0

#直進
execute if entity @s[tag=t.hardShot1,tag=!t.hardShot0] at @s run tp @s ^0.015 ^ ^0.35
execute if entity @s[tag=t.hardShot1,tag=!t.hardShot0] at @s run tp @s ^0.015 ^ ^0.35
execute if entity @s[tag=t.hardShot1,tag=!t.hardShot0] at @s run tp @s ^0.015 ^ ^0.35
execute if entity @s[tag=t.hardShot1,tag=!t.hardShot0] at @s run tp @s ^0.015 ^ ^0.35

execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] at @s run tp @s ^ ^ ^0.35
execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] at @s run tp @s ^ ^ ^0.35
execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] at @s run tp @s ^ ^ ^0.35
execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] at @s run tp @s ^ ^ ^0.35

execute if entity @s[tag=t.hardShot3,tag=!t.hardShot0] at @s run tp @s ^-0.015 ^ ^0.35
execute if entity @s[tag=t.hardShot3,tag=!t.hardShot0] at @s run tp @s ^-0.015 ^ ^0.35
execute if entity @s[tag=t.hardShot3,tag=!t.hardShot0] at @s run tp @s ^-0.015 ^ ^0.35
execute if entity @s[tag=t.hardShot3,tag=!t.hardShot0] at @s run tp @s ^-0.015 ^ ^0.35

#パーティクル
particle dust{color:[1.0,0.0,1.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0 5 force
particle minecraft:witch ~ ~ ~ 0.25 0.25 0.25 0 1

#ヒット判定
scoreboard players add @s BulletRemain 1
kill @e[tag=t.hardShot,scores={BulletRemain=60..}] 
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add t.hardHit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add t.hardHiT.Player
execute unless block ^ ^ ^0.7 #t.hard:no_enderflame run tag @s add t.hardHit
execute unless block ^ ^ ^0.7 #t.hard:no_enderflame run tag @s add t.hardHiT.Block
execute if entity @s[tag=t.hardHiT.Player] run effect give @p resistance 1 1 true
execute if entity @s[tag=t.hardHiT.Player] run effect give @p instant_damage 1
execute if entity @s[tag=t.hardHiT.Block] run setblock ^ ^ ^0.7 air destroy 
kill @s[tag=t.hardHit]
