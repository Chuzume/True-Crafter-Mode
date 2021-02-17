#
particle minecraft:item_slime ~ ~ ~ 0 0 0 0 1
particle minecraft:dust 0 0.5 0 1 ~ ~ ~ 0.1 0.1 0.1 1 0
execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:slowness 2 2
execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:poison 7 0
#飛ばす
execute if entity @s[tag=T.Hard_Poison_Ball0] facing entity @p feet run summon area_effect_cloud ^ ^ ^0.15 {Duration:1,Tags:["pos"]}
scoreboard players set @s[tag=T.Hard_Poison_Ball0] ChuzSpeed 6
execute as @s[tag=T.Hard_Poison_Ball0] run function t.hard:move_xz
execute as @s[tag=T.Hard_Poison_Ball0] run data modify entity @s Motion[1] set value 0.4
tag @s[tag=T.Hard_Poison_Ball0] remove T.Hard_Poison_Ball0