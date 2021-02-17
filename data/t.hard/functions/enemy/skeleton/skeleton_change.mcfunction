#ガストとかフロストになる
loot spawn ~ ~ ~ loot t.hard:random/skeleton_change
execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{T.Hard_Spawn:Elite_Skeleton}}}] run summon minecraft:skeleton ~ ~ ~ {Tags:["T.Hard_AlreadyInit","T.Hard_Ske_Ranged","T.Hard_Shielder"],HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11250603}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:11250603}}}]}
execute if entity @e[sort=nearest,limit=1,type=item,nbt={Item:{tag:{T.Hard_Replace:1b}}}] run tag @s add T.Hard_GoToVoid
execute if entity @e[sort=nearest,limit=1,type=item,nbt={Item:{tag:{T.Hard_Replace:1b}}}] run function t.hard:enemy/common/go_to_void
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:barrier",tag:{T.Hard_Random:1b}}}]