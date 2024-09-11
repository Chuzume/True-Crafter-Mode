#能力強化など
data merge entity @s {IsImmuneToZombification:1b,attributes:[{id:"generic.knockback_resistance",base:0.25}]}

#剣持ちなら近接タグ、クロスボウなら遠距離タグ
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:golden_sword",count:1}]}] add t.hardPiglin_Sword
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:crossbow",count:1}]}] add t.hardPiglin_Crossbow
tag @s[type=minecraft:piglin,nbt={HandItems:[{id:"minecraft:crossbow",count:1}]}] add t.hardPiglin_Crossbow_Ranged

#次回以降は実行しないためにタグ付け
tag @s add t.hardAlreadyInit