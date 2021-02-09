#スポーン時
execute if entity @s[tag=!T.Hard_Already] run function t.hard:enemy/zombie/spawn
#周囲に敵がいるなら
execute if entity @e[type=#t.hard:zombie_enemy,tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/zombie/attack