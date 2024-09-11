playsound block.stone.place hostile @a ~ ~ ~ 1 0.8
execute align xyz run setblock ~0.5 ~0.5 ~0.5 mossy_cobblestone
execute align xyz run summon minecraft:item_frame ~0.5 ~0.5 ~0.5 {Invisible:1b,Silent:1b,Fixed:1b,Tags:["t.hardEnemy_Block"]}