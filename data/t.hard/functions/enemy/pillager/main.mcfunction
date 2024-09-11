#スポーン時
execute if entity @s[tag=!T.HardAlreadyInit] run function t.hard:enemy/pillager/spawn
#周囲に敵がいるなら
execute if entity @e[type=#t.hard:zombie_enemy,tag=!T.HardException,distance=..30] run function t.hard:enemy/pillager/attack