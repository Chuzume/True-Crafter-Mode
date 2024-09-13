#能力強化など
data merge entity @s {IsImmuneToZombification:1b,Attributes:[{Name:"generic.knockback_resistance",Base:0.25}]}

#剣持ちなら近接タグ、クロスボウなら遠距離タグ
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:golden_sword",Count:1b}]}] add T.HardPiglin_Sword
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:crossbow",Count:1b}]}] add T.HardPiglin_Crossbow
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:crossbow",Count:1b}]}] add T.HardPiglin_Crossbow_Ranged

#次回以降は実行しないためにタグ付け
tag @s add TrueCrafterMode.AlreadyInit