#スポーン時
execute if entity @s[tag=!T.Hard_Already] run function t.hard:enemy/piglin/spawn
#周囲に敵がいるなら
execute if entity @s[nbt=!{IsBaby:1b}] if entity @e[type=#t.hard:piglin_enemy,tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/piglin/attack