#スポーン時
execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:enemy/piglin_brute/spawn
#周囲に敵がいるなら
execute if entity @e[type=#t.hard:piglin_enemy,tag=!t.hardException,distance=..30] run function t.hard:enemy/piglin_brute/attack