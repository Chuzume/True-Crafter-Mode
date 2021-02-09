#咆哮
playsound minecraft:entity.hoglin.death hostile @a ~ ~ ~ 3 0
playsound minecraft:entity.piglin_brute.death hostile @a ~ ~ ~ 3 0

#周囲のピグリンが一斉に近くのプレイヤーに敵対
execute as @e[type=piglin,distance=..60] at @s run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @e[type=#t.hard:piglin_enemy,tag=!T.Hard_Exception,limit=1,sort=nearest] UUID
execute at @e[type=piglin,distance=..60] run particle minecraft:angry_villager ~ ~1.5 ~ 0 0 0 0 1

#自身へのパーティクルと鈍足
particle minecraft:angry_villager ~ ~1.5 ~ 0 0 0 0 1
effect give @s slowness 2 20 true

#プレイヤーが逃げていくまで二度と発動しない
tag @s add T.Hard_NoRoar