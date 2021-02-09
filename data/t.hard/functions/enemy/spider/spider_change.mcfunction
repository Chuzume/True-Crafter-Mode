#ケイブスパイダーとかスケルトンジョッキーとか
loot spawn ~ ~ ~ loot t.hard:random/spider_change
execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{T.Hard_Spawn:Cave_Spider}}}] run summon cave_spider ~ ~ ~
execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{T.Hard_Spawn:Spider_Jocky}}}] run summon spider ~ ~ ~ {Tags:["T.Hard_Already"],Passengers:[{id:"minecraft:skeleton",Tags:["T.Hard_Already","T.Hard_Ske_Ranged"],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:5195068}}}]}]}
execute if entity @e[sort=nearest,limit=1,type=item,nbt={Item:{tag:{T.Hard_Replace:1b}}}] run function t.hard:enemy/common/go_to_void
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:barrier",tag:{T.Hard_Random:1b}}}]
tag @s add T.Hard_Already