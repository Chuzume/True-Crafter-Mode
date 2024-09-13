#能力強化など
data merge entity @s {Health:20f,IsImmuneToZombification:1b,Attributes:[{Name:"generic.max_health",Base:20}]}

#剣持ちなら近接タグ、クロスボウなら遠距離タグ
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:golden_sword",Count:1b}]}] add TMCM.Piglin.Sword
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:crossbow",Count:1b}]}] add TMCM.Piglin.Crossbow
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:crossbow",Count:1b}]}] add TMCM.Piglin.Crossbow.Ranged

#次回以降は実行しないためにタグ付け
tag @s add TMCM.AlreadyInit