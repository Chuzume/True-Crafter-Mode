execute if entity @s[type=husk] run function t.hard:enemy/zombie/husk_change
execute as @s[type=#t.hard:no_sun_undead,tag=!T.Hard_Already] run function t.hard:enemy/common/undead_hat
data merge entity @s[nbt=!{IsBaby:1b}] {CanPickUpLoot:1b,Attributes:[{Name:"generic.movemenT.speed",Base:0.32}]}
data merge entity @s[nbt={IsBaby:1b}] {CanPickUpLoot:1b}
tag @s add T.Hard_Already