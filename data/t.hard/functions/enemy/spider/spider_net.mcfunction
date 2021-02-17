#
particle minecraft:spit ~ ~ ~ 0 0 0 0 1
execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:slowness 2 3
execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:mining_fatigue 2 5
#飛ばす
execute if entity @s[tag=T.Hard_Net0] facing entity @p feet run summon area_effect_cloud ^ ^ ^0.15 {Duration:1,Tags:["pos"]}
scoreboard players set @s[tag=T.Hard_Net0] ChuzSpeed 6
execute as @s[tag=T.Hard_Net0] run function t.hard:move_xz
execute as @s[tag=T.Hard_Net0] run data modify entity @s Motion[1] set value 0.4
tag @s[tag=T.Hard_Net0] remove T.Hard_Net0