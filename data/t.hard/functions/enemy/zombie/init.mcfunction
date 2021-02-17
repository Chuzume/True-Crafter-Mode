execute if entity @s[type=husk] run function t.hard:enemy/zombie/husk_change
execute as @s[type=#t.hard:no_sun_undead,tag=!T.Hard_AlreadyInit] run function t.hard:enemy/common/undead_hat
data merge entity @s[nbt=!{IsBaby:1b}] {CanPickUpLoot:1b,Attributes:[{Name:"generic.movement_speed",Base:0.32}]}
data merge entity @s[nbt={IsBaby:1b}] {CanPickUpLoot:1b}
tag @s add T.Hard_AlreadyInit