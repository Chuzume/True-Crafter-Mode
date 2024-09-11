#自身のサイズを取得
execute store result score @s[tag=!t.hardAlreadyInit] t.hardMoveset2 run data get entity @s Size
tag @s[tag=!t.hardAlreadyInit] add t.hardAlreadyInit

#付近にプレイヤーがいたら謎パワーで巨大化
execute if entity @a[distance=..10,tag=!t.hardException] unless entity @s[scores={TrueCrafterMode.Tick=80..}] run scoreboard players add @s[nbt=!{Size:0},nbt=!{Size:5}] TrueCrafterMode.Tick 1

#tag @s[scores={TrueCrafterMode.Tick=100},nbt={Size:0}] add t.hardSlime_Big
tag @s[scores={TrueCrafterMode.Tick=60}] add t.hardSlime_Big
scoreboard players add @s[tag=t.hardSlime_Big] t.hardMoveset2 1 
execute if entity @s[tag=t.hardSlime_Big] run particle explosion ~ ~0.8 ~ 0 0 0 0 1
execute if entity @s[tag=t.hardSlime_Big] run particle lava ~ ~0.8 ~ 0 0 0 0.1 5
execute if entity @s[tag=t.hardSlime_Big] run playsound minecraft:entity.magma_cube.squish hostile @a ~ ~ ~ 1.5 0.75
execute store result entity @s[tag=t.hardSlime_Big] Size int 1 run scoreboard players get @s t.hardMoveset2
scoreboard players reset @s[scores={TrueCrafterMode.Tick=80..}] TrueCrafterMode.Tick
tag @s[tag=t.hardSlime_Big] remove t.hardSlime_Big
#スコア
scoreboard players add @s[scores={TrueCrafterMode.Tick=60..}] TrueCrafterMode.Tick 1
execute unless entity @a[distance=..10,tag=!t.hardException] run scoreboard players reset @s TrueCrafterMode.Tick
