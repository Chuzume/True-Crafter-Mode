#スポーン時
execute if entity @s[tag=!T.Hard_AlreadyInit] run function t.hard:enemy/piglin_brute/spawn
#周囲に敵がいるなら
execute if entity @e[type=#t.hard:piglin_enemy,tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/piglin_brute/attack