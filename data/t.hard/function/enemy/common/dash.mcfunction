execute if entity @s facing entity @p eyes run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
execute if entity @s run function t.hard:move_xz
scoreboard players reset @s Chuz_Speed