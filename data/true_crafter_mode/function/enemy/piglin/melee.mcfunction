
#前をチェックして飛びかかり
<<<<<<< HEAD:data/t.hard/function/enemy/piglin/melee.mcfunction
execute positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:piglin_enemy,distance=..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s TMCM.Tick 1

#前方にブロックがあればスコアリセット
execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
scoreboard players set @s[scores={TMCM.Tick=40}] Chuz.Speed 10
execute if entity @s[scores={TMCM.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={TMCM.Tick=40..}] TMCM.Tick
=======
execute positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:piglin_enemy,distance=..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s TMCM.Tick 1

#前方にブロックがあればスコアリセット
execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
scoreboard players set @s[scores={TMCM.Tick=40}] Chuz.Speed 10
execute if entity @s[scores={TMCM.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={TMCM.Tick=40..}] TMCM.Tick
>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/piglin/melee.mcfunction
