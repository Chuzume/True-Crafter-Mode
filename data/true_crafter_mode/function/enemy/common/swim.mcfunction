# すいすい
    scoreboard players set @s Chuz.Speed 1
    summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["T.HardRotFix"],Duration:1}
    execute as @e[tag=T.HardRotFix,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @p[distance=..30,tag=!TrueCrafterMode.Exception] eyes
    data modify entity @s Rotation[0] set from entity @e[tag=T.HardRotFix,limit=1,sort=nearest] Rotation[0]
    execute facing entity @p[distance=..30,tag=!TrueCrafterMode.Exception] feet run function true_crafter_mode:move
    scoreboard players reset @s Chuz.Speed