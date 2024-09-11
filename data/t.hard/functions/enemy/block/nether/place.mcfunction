playsound minecraft:block.stem.place block @a ~ ~ ~ 1.5 1
execute align xyz run setblock ~0.5 ~0.5 ~0.5 crimson_hyphae
execute align xyz run summon minecraft:item_frame ~0.5 ~0.5 ~0.5 {Invisible:1b,Silent:1b,Fixed:1b,Tags:["T.HardEnemy_Block_Nether"]}