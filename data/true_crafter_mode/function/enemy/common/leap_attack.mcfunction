# とびかかり
    tp @s @s
    function true_crafter_mode:move
    data modify entity @s Motion[1] set value 0.4
    scoreboard players reset @s Chuz_Speed
    
#summon minecraft:armor_stand ~ ~ ~ {FallDistance:8,Silent:1b,Health:0,Invisible:1b,DeathTime:18s}