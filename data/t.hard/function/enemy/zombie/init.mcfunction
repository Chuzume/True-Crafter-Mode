execute if entity @s[type=husk] run function t.hard:enemy/zombie/husk_change
execute as @s[type=#t.hard:no_sun_undead,tag=!t.hardAlreadyInit] run function t.hard:enemy/common/undead_hat
data merge entity @s[nbt=!{IsBaby:1b}] {CanPickUpLoot:1b,attributes:[{id:"generic.movement_speed",base:0.32}]}
data merge entity @s[nbt={IsBaby:1b}] {CanPickUpLoot:1b}
tag @s add t.hardAlreadyInit