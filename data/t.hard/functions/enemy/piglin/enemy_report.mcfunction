#コレ敵なんスね？
data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @e[limit=1,sort=nearest] Brain.memories."minecraft:angry_at".value
execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0 0 0 0 1