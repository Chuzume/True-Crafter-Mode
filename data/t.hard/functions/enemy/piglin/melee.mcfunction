
#前をチェックして飛びかかり
execute positioned ^ ^ ^-0.5 facing entity @e[type=#t.hard:piglin_enemy,distance=..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.Hard_Moveset1 1

#前方にブロックがあればスコアリセット
execute rotated ~ 0 unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s T.Hard_Moveset1
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s T.Hard_Moveset1
scoreboard players set @s[scores={T.Hard_Moveset1=40}] ChuzSpeed 10
execute if entity @s[scores={T.Hard_Moveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1