particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
particle explosion ~ ~0.5 ~ 0 0 0 0 1
playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1.5 2
playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 1.5 1
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:pumpkin"},Time:1,Motion:[0.0,0.5,0.0]}
execute if entity @s[nbt=!{PlayerCreated:1b}] run loot spawn ~ ~ ~ loot minecraft:entities/iron_golem
execute if entity @s[nbt={PlayerCreated:1b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_block",Count:4b}}
function t.hard:enemy/common/go_to_void