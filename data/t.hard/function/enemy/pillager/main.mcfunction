#スポーン時
execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:enemy/pillager/spawn
#周囲に敵がいるなら
execute if entity @e[type=#t.hard:zombie_enemy,tag=!t.hardException,distance=..30] run function t.hard:enemy/pillager/attack