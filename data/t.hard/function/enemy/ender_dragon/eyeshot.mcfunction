#エンドラの貫通ダメージ弾
execute as @s at @s run tp @s[tag=t.hardShot0] ~ ~ ~ facing entity @p feet
execute as @s at @s run tp @s[tag=t.hardShot0] ~ ~ ~ ~ ~-2
tag @s[tag=t.hardShot0] remove t.hardShot0

#直進
execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] at @s run tp @s ^ ^ ^0.15
execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] at @s run tp @s ^ ^ ^0.15
execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] at @s run tp @s ^ ^ ^0.15
execute if entity @s[tag=t.hardShot2,tag=!t.hardShot0] at @s run tp @s ^ ^ ^0.15

#パーティクル
particle dust{color:[1.0,0.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 2 force

#ヒット判定
scoreboard players add @s BulletRemain 1
kill @e[tag=t.hardShot,scores={BulletRemain=50..}] 
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add t.hardHit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add t.hardHiT.Player
execute unless block ^ ^ ^0.5 #t.hard:no_collision run tag @s add t.hardHit
execute if entity @s[tag=t.hardHiT.Player] run effect give @p wither 1 2 true
kill @s[tag=t.hardHit]
