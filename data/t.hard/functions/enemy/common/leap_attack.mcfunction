summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
function t.hard:move_xz
data modify entity @s Motion[1] set value 0.4
scoreboard players reset @s Motion_Speed
summon minecraft:armor_stand ~ ~ ~ {FallDistance:8,Silent:1b,Health:0,Invisible:1b,DeathTime:18s}