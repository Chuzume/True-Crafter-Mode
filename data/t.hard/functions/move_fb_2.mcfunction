#FireballみたいなMotionではなくpowerを使うようなものを飛ばす
#実行者が持っている"ChuzSpeed"の値によってスピード増減
#X軸
execute as @s store result score @s Motion_Power run data get entity @s Pos[0] 100
execute as @e[tag=pos] store result score @s Motion_Power run data get entity @s Pos[0] 100
execute as @s at @s positioned ^ ^ ^0.1 run scoreboard players operation @s Motion_Power -= @e[tag=pos,limit=1,sort=nearest] Motion_Power
scoreboard players operation @s Motion_Power *= @s ChuzSpeed
execute as @s store result entity @s power[0] double -0.01 run scoreboard players get @s Motion_Power

#Y軸
execute as @s store result score @s Motion_Power run data get entity @s Pos[1] 100
execute as @e[tag=pos] store result score @s Motion_Power run data get entity @s Pos[1] 100
execute as @s at @s positioned ^ ^ ^0.1 run scoreboard players operation @s Motion_Power -= @e[tag=pos,limit=1,sort=nearest] Motion_Power
scoreboard players operation @s Motion_Power *= @s ChuzSpeed
execute as @s store result entity @s power[1] double -0.01 run scoreboard players get @s Motion_Power

#Z軸
execute as @s store result score @s Motion_Power run data get entity @s Pos[2] 100
execute as @e[tag=pos] store result score @s Motion_Power run data get entity @s Pos[2] 100
execute as @s at @s positioned ^ ^ ^0.1 run scoreboard players operation @s Motion_Power -= @e[tag=pos,limit=1,sort=nearest] Motion_Power
scoreboard players operation @s Motion_Power *= @s ChuzSpeed
execute as @s store result entity @s power[2] double -0.01 run scoreboard players get @s Motion_Power
