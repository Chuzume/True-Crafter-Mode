
#前をチェックして飛びかかり
<<<<<<< HEAD:data/t.hard/function/enemy/piglin/melee.mcfunction
execute positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:piglin_enemy,distance=..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s TrueCrafterMode.Tick 1

#前方にブロックがあればスコアリセット
execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TrueCrafterMode.Tick
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TrueCrafterMode.Tick
scoreboard players set @s[scores={TrueCrafterMode.Tick=40}] Chuz_Speed 10
execute if entity @s[scores={TrueCrafterMode.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={TrueCrafterMode.Tick=40..}] TrueCrafterMode.Tick
=======
execute positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:piglin_enemy,distance=..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.HardMoveset1 1

#前方にブロックがあればスコアリセット
execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s T.HardMoveset1
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s T.HardMoveset1
scoreboard players set @s[scores={T.HardMoveset1=40}] Chuz_Speed 10
execute if entity @s[scores={T.HardMoveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={T.HardMoveset1=40..}] T.HardMoveset1
>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/piglin/melee.mcfunction
