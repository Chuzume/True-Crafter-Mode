#松明も壊す
execute store success score @s T.HardTorch store success score @s T.HardTorch run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace #t.hard:torches
execute if entity @s[scores={T.HardTorch=1..}] run summon item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b}}
scoreboard players reset @s[scores={T.HardTorch=1..}] T.HardTorch

#ドアをぶち壊す
execute if score #t.hard_Gamerule T.HardGamerule3 matches 0 run execute store success score @s T.HardDoor run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #minecraft:wooden_doors
execute if score #t.hard_Gamerule T.HardGamerule3 matches 0 run execute store success score @s T.HardDoor2 run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #minecraft:wooden_trapdoors
execute store success score @s T.HardDoor3 run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #t.hard:fence_gates

#鉄ドア壊すモードがONなら鉄ドアも粉々
execute if score #t.hard_Gamerule T.HardGamerule3 matches 1 run execute store success score @s T.HardDoor run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #minecraft:doors
execute if score #t.hard_Gamerule T.HardGamerule3 matches 1 run execute store success score @s T.HardDoor2 run fill ~-1.5 ~ ~-1.5 ~1.5 ~1 ~1.5 minecraft:air replace #minecraft:trapdoors

execute if entity @s[scores={T.HardDoor=1..}] run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1.5 1.3
scoreboard players reset @s[scores={T.HardDoor=1..}] T.HardDoor

execute if entity @s[scores={T.HardDoor2=1..}] run playsound minecraft:block.wood.break block @a ~ ~ ~ 1.5 0.8
scoreboard players reset @s[scores={T.HardDoor2=1..}] T.HardDoor2

execute if entity @s[scores={T.HardDoor3=1..}] run playsound minecraft:block.wood.break block @a ~ ~ ~ 1.5 0.8
scoreboard players reset @s[scores={T.HardDoor3=1..}] T.HardDoor3