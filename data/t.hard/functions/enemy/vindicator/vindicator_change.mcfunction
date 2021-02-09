#イリュージョナーになる
loot spawn ~ ~ ~ loot t.hard:random/vindicator_change
execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{T.Hard_Spawn:Illusioner}}}] run summon illusioner ~ ~ ~
execute if entity @e[sort=nearest,limit=1,type=item,nbt={Item:{tag:{T.Hard_Replace:1b}}}] run function t.hard:enemy/common/go_to_void
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:barrier",tag:{T.Hard_Random:1b}}}]
tag @s add T.Hard_Already