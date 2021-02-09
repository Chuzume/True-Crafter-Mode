#スポーン時
execute if entity @s[tag=!T.Hard_Already] run function t.hard:enemy/enderman/spawn
#周囲に敵がいるなら
execute if entity @a[tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/enderman/attack