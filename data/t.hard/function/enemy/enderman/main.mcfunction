#スポーン時
execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:enemy/enderman/spawn
#周囲に敵がいるなら
execute if entity @a[tag=!t.hardException,distance=..30] run function t.hard:enemy/enderman/attack