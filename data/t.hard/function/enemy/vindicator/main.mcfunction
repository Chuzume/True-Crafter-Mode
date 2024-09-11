#スポーン時
execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:enemy/vindicator/vindicator_change

#周囲に敵がいるなら
execute if entity @e[type=#t.hard:zombie_enemy,tag=!t.hardException,distance=..30] run function t.hard:enemy/vindicator/attack
