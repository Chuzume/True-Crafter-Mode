
#前をチェックして飛びかかり
<<<<<<< HEAD:data/t.hard/function/enemy/vindicator/attack.mcfunction
execute positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:human,distance=5..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s[nbt={OnGround:1b}] TMCM.Tick 1
scoreboard players set @s[scores={TMCM.Tick=40}] Chuz.Speed 6
execute if entity @s[scores={TMCM.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={TMCM.Tick=40..}] TMCM.Tick
=======
execute positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:human,distance=5..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s[nbt={OnGround:1b}] TMCM.Tick 1
scoreboard players set @s[scores={TMCM.Tick=40}] Chuz.Speed 6
execute if entity @s[scores={TMCM.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={TMCM.Tick=40..}] TMCM.Tick
>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/vindicator/attack.mcfunction

#近接当てたら即座にバックステップ
execute if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T.HardMoveset2 59
#時々バクステで距離を取る
execute if entity @a[distance=..5,tag=!TMCM.Exception] run scoreboard players add @s T.HardMoveset2 1
scoreboard players set @s[scores={T.HardMoveset2=60}] Chuz.Speed 7
execute if entity @s[scores={T.HardMoveset2=60..}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_step
execute if entity @s[scores={T.HardMoveset2=60..}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
execute if entity @s[scores={T.HardMoveset2=60..}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={T.HardMoveset2=60..}] T.HardMoveset2
execute unless entity @a[distance=..5,tag=!TMCM.Exception] run scoreboard players reset @s[scores={T.HardMoveset2=60..}] T.HardMoveset2

#静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
execute if entity @s[nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..20,tag=!TMCM.Exception] run scoreboard players add @s TMCM.Move.Dig 1
#ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 0 run scoreboard players reset @s TMCM.Move.Dig
#t.hard_Digが40になったらブロック粉々
execute if entity @s[scores={TMCM.Move.Dig=40},tag=ChuzOnGround,tag=ChuzStandstill] facing entity @e[type=#true_crafter_mode:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function true_crafter_mode:enemy/common/break_block_forward
scoreboard players reset @s[nbt=!{Motion:[0.0,-0.0784000015258789d,0.0]}] TMCM.Move.Dig 

#採掘カウント削除
scoreboard players reset @s[scores={TMCM.Move.Dig=40..}] TMCM.Move.Dig

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim