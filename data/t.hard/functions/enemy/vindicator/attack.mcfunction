
#前をチェックして飛びかかり
execute positioned ^ ^ ^-0.5 facing entity @e[type=#t.hard:human,distance=5..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s[nbt={OnGround:1b}] T.Hard_Moveset1 1
scoreboard players set @s[scores={T.Hard_Moveset1=40}] ChuzSpeed 6
execute if entity @s[scores={T.Hard_Moveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1

#近接当てたら即座にバックステップ
execute if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T.Hard_Moveset2 59
#時々バクステで距離を取る
execute if entity @a[distance=..5,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Moveset2 1
scoreboard players set @s[scores={T.Hard_Moveset2=60}] ChuzSpeed 7
execute if entity @s[scores={T.Hard_Moveset2=60..}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step
execute if entity @s[scores={T.Hard_Moveset2=60..}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
execute if entity @s[scores={T.Hard_Moveset2=60..}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={T.Hard_Moveset2=60..}] T.Hard_Moveset2
execute unless entity @a[distance=..5,tag=!T.Hard_Exception] run scoreboard players reset @s[scores={T.Hard_Moveset2=60..}] T.Hard_Moveset2

#静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
execute if entity @s[nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..20,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Dig 1
#ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 0 run scoreboard players reset @s T.Hard_Dig
#t.hard_Digが40になったらブロック粉々
execute if entity @s[scores={T.Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @e[type=#t.hard:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function t.hard:enemy/common/break_block_forward
scoreboard players reset @s[nbt=!{Motion:[0.0,-0.0784000015258789d,0.0]}] T.Hard_Dig 

#採掘カウント削除
scoreboard players reset @s[scores={T.Hard_Dig=40..}] T.Hard_Dig

#段差飛び越え
function t.hard:enemy/common/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T.Hard_Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim