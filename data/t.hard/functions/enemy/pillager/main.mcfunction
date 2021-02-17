#スポーン時
execute if entity @s[tag=!T.Hard_AlreadyInit] run function t.hard:enemy/pillager/spawn
#周囲に敵がいるなら
execute if entity @e[type=#t.hard:zombie_enemy,tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/pillager/attack