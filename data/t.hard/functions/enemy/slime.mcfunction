#自身のサイズを取得
execute store result score @s[tag=!T.Hard_AlreadyInit] T.Hard_Moveset2 run data get entity @s Size
tag @s[tag=!T.Hard_AlreadyInit] add T.Hard_AlreadyInit

#付近にプレイヤーがいたら謎パワーで巨大化
execute if entity @a[distance=..10,tag=!T.Hard_Exception] unless entity @s[scores={T.Hard_Moveset1=80..}] run scoreboard players add @s[nbt=!{Size:0},nbt=!{Size:5}] T.Hard_Moveset1 1

#tag @s[scores={T.Hard_Moveset1=100},nbt={Size:0}] add T.Hard_Slime_Big
tag @s[scores={T.Hard_Moveset1=60}] add T.Hard_Slime_Big
scoreboard players add @s[tag=T.Hard_Slime_Big] T.Hard_Moveset2 1 
execute if entity @s[tag=T.Hard_Slime_Big] run particle explosion ~ ~0.8 ~ 0 0 0 0 1
execute if entity @s[tag=T.Hard_Slime_Big] run particle instant_effect ~ ~0.8 ~ 0 0 0 0.1 5
execute if entity @s[tag=T.Hard_Slime_Big] run playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 1.5 0.75
execute store result entity @s[tag=T.Hard_Slime_Big] Size int 1 run scoreboard players get @s T.Hard_Moveset2
scoreboard players reset @s[scores={T.Hard_Moveset1=80..}] T.Hard_Moveset1
tag @s[tag=T.Hard_Slime_Big] remove T.Hard_Slime_Big
#スコア
scoreboard players add @s[scores={T.Hard_Moveset1=60..}] T.Hard_Moveset1 1
execute unless entity @a[distance=..10,tag=!T.Hard_Exception] run scoreboard players reset @s T.Hard_Moveset1
