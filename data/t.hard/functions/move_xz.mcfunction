
#実行者が持っている"Motion_Speed"の値によってスピード増減
#こちらは水平オンリー、縦には別の方法で飛ばしたい時に使う
#X軸
execute as @s store result score @s Motion_Power run data get entity @s Pos[0] 100
execute as @e[tag=pos] store result score @s Motion_Power run data get entity @s Pos[0] 100
execute as @s at @s positioned ^ ^ ^0.1 run scoreboard players operation @s Motion_Power -= @e[tag=pos,limit=1,sort=nearest] Motion_Power
scoreboard players operation @s Motion_Power *= @s Motion_Speed
execute as @s store result entity @s Motion[0] double -0.01 run scoreboard players get @s Motion_Power

#Z軸
execute as @s store result score @s Motion_Power run data get entity @s Pos[2] 100
execute as @e[tag=pos] store result score @s Motion_Power run data get entity @s Pos[2] 100
execute as @s at @s positioned ^ ^ ^0.1 run scoreboard players operation @s Motion_Power -= @e[tag=pos,limit=1,sort=nearest] Motion_Power
scoreboard players operation @s Motion_Power *= @s Motion_Speed
execute as @s store result entity @s Motion[2] double -0.01 run scoreboard players get @s Motion_Power
