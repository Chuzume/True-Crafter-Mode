# すいすい
    scoreboard players set @s Chuz_Speed 1
    summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["T.HardRotFix"],Duration:1}
    execute as @e[tag=T.HardRotFix,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @p[distance=..30,tag=!T.HardException] eyes
    data modify entity @s Rotation[0] set from entity @e[tag=T.HardRotFix,limit=1,sort=nearest] Rotation[0]
    execute facing entity @p[distance=..30,tag=!T.HardException] feet run function t.hard:move
    scoreboard players reset @s Chuz_Speed