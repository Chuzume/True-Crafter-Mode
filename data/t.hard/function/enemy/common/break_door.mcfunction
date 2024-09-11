#松明も壊す
execute store success score @s t.hardTorch store success score @s t.hardTorch run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace #t.hard:torches
execute if entity @s[scores={t.hardTorch=1..}] run summon item ~ ~ ~ {Item:{id:"minecraft:torch",count:1b}}
scoreboard players reset @s[scores={t.hardTorch=1..}] t.hardTorch

#ドアをぶち壊す
execute if score #t.hard_Gamerule t.hardGamerule3 matches 0 run execute store success score @s t.hardDoor run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #minecraft:wooden_doors
execute if score #t.hard_Gamerule t.hardGamerule3 matches 0 run execute store success score @s t.hardDoor2 run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #minecraft:wooden_trapdoors
execute store success score @s t.hardDoor3 run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #t.hard:fence_gates

#鉄ドア壊すモードがONなら鉄ドアも粉々
execute if score #t.hard_Gamerule t.hardGamerule3 matches 1 run execute store success score @s t.hardDoor run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #minecraft:doors
execute if score #t.hard_Gamerule t.hardGamerule3 matches 1 run execute store success score @s t.hardDoor2 run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #minecraft:trapdoors

execute if entity @s[scores={t.hardDoor=1..}] run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1.5 1.3
scoreboard players reset @s[scores={t.hardDoor=1..}] t.hardDoor

execute if entity @s[scores={t.hardDoor2=1..}] run playsound minecraft:block.wood.break block @a ~ ~ ~ 1.5 0.8
scoreboard players reset @s[scores={t.hardDoor2=1..}] t.hardDoor2

execute if entity @s[scores={t.hardDoor3=1..}] run playsound minecraft:block.wood.break block @a ~ ~ ~ 1.5 0.8
scoreboard players reset @s[scores={t.hardDoor3=1..}] t.hardDoor3