#
particle minecraft:item_slime ~ ~ ~ 0 0 0 0 1
particle dust{color:[0.0,0.5,0.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 0
execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:slowness 2 2
execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @a[dx=0] minecraft:poison 7 0
