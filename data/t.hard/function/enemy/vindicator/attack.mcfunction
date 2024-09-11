
#前をチェックして飛びかかり
execute positioned ^ ^ ^-0.5 facing entity @e[type=#t.hard:human,distance=5..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s[nbt={OnGround:1b}] TrueCrafterMode.Tick 1
scoreboard players set @s[scores={TrueCrafterMode.Tick=40}] Chuz_Speed 6
execute if entity @s[scores={TrueCrafterMode.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={TrueCrafterMode.Tick=40..}] TrueCrafterMode.Tick

#近接当てたら即座にバックステップ
execute if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s t.hardMoveset2 59
#時々バクステで距離を取る
execute if entity @a[distance=..5,tag=!t.hardException] run scoreboard players add @s t.hardMoveset2 1
scoreboard players set @s[scores={t.hardMoveset2=60}] Chuz_Speed 7
execute if entity @s[scores={t.hardMoveset2=60..}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step
execute if entity @s[scores={t.hardMoveset2=60..}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
execute if entity @s[scores={t.hardMoveset2=60..}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={t.hardMoveset2=60..}] t.hardMoveset2
execute unless entity @a[distance=..5,tag=!t.hardException] run scoreboard players reset @s[scores={t.hardMoveset2=60..}] t.hardMoveset2

#静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
execute if entity @s[nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..20,tag=!t.hardException] run scoreboard players add @s t.hardDig 1
#ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule t.hardGamerule1 matches 0 run scoreboard players reset @s t.hardDig
#t.hard_Digが40になったらブロック粉々
execute if entity @s[scores={t.hardDig=40},tag=ChuzOnGround,tag=ChuzStandstill] facing entity @e[type=#t.hard:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function t.hard:enemy/common/break_block_forward
scoreboard players reset @s[nbt=!{Motion:[0.0,-0.0784000015258789d,0.0]}] t.hardDig 

#採掘カウント削除
scoreboard players reset @s[scores={t.hardDig=40..}] t.hardDig

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule t.hardGamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!t.hardException] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim