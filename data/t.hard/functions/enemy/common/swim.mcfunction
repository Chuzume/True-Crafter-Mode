#すいすい
scoreboard players set @s ChuzSpeed 1
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["T.Hard_RotFix"],Duration:1}
execute as @e[tag=T.Hard_RotFix,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @p[distance=..30,tag=!T.Hard_Exception] eyes
data modify entity @s Rotation[0] set from entity @e[tag=T.Hard_RotFix,limit=1,sort=nearest] Rotation[0]
execute facing entity @p[distance=..30,tag=!T.Hard_Exception] feet run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
function t.hard:move_slow
scoreboard players reset @s ChuzSpeed