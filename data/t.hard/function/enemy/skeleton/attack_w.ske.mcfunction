
#エンチャされた弓を拾ったら遠距離オンリーに移行
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{}}}},{}]}] run tag @s add t.hardSke_NoSwitch

#近接武器を拾ったら近距離オンリーに移行
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_sword",count:1},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",count:1}]}] run tag @s add t.hardSke_NoSwitch

#離れてる時は弓
execute if entity @s[tag=t.hardSke_Melee,tag=!t.hardSke_NoSwitch] if entity @e[type=#t.hard:w.skeleton_enemy,distance=5..16,tag=!t.hardException] run item replace entity @s weapon.mainhand with minecraft:bow
execute if entity @s[tag=t.hardSke_Melee] if entity @e[type=#t.hard:w.skeleton_enemy,distance=5..16,tag=!t.hardException] run tag @s add t.hardSke_Ranged
tag @e[tag=t.hardSke_Ranged] remove t.hardSke_Melee

#近い時は近接武器
execute if entity @s[tag=t.hardSke_Ranged,tag=!t.hardSke_NoSwitch] if entity @e[type=#t.hard:w.skeleton_enemy,distance=..5,tag=!t.hardException] run item replace entity @s weapon.mainhand with minecraft:stone_sword
execute if entity @s[tag=t.hardSke_Ranged] if entity @e[type=#t.hard:w.skeleton_enemy,distance=..5,tag=!t.hardException] run tag @s add t.hardSke_Melee
tag @e[tag=t.hardSke_Melee] remove t.hardSke_Ranged

#背後チェックして飛びかかり/バックステップ
execute if entity @s[tag=t.hardSke_Ranged2] if entity @e[type=#t.hard:w.skeleton_enemy,distance=..5,tag=!t.hardException] run scoreboard players add @s TrueCrafterMode.Tick 1
execute if entity @s[tag=t.hardSke_Ranged] positioned ^ ^ ^-0.5 facing entity @e[type=#t.hard:w.skeleton_enemy,distance=..16,tag=!t.hardException,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s TrueCrafterMode.Tick 1
scoreboard players set @s[tag=t.hardSke_Ranged,scores={TrueCrafterMode.Tick=40}] Chuz_Speed 8
execute if entity @s[tag=t.hardSke_Ranged,scores={TrueCrafterMode.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack

execute if entity @s[tag=t.hardSke_Melee] if entity @e[type=#t.hard:w.skeleton_enemy,distance=..5,tag=!t.hardException] run scoreboard players add @s TrueCrafterMode.Tick 1
scoreboard players set @s[tag=t.hardSke_Melee,scores={TrueCrafterMode.Tick=40}] Chuz_Speed 8
execute if entity @s[tag=!t.hardSke_Ranged,scores={TrueCrafterMode.Tick=40}] facing entity @e[type=#t.hard:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step
execute if entity @s[tag=!t.hardSke_Ranged,scores={TrueCrafterMode.Tick=40}] facing entity @e[type=#t.hard:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
execute if entity @s[tag=!t.hardSke_Ranged,scores={TrueCrafterMode.Tick=40}] facing entity @e[type=#t.hard:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^-1 ^-3 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={TrueCrafterMode.Tick=40..}] TrueCrafterMode.Tick

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule t.hardGamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @e[type=#t.hard:w.skeleton_enemy,distance=..30,tag=!t.hardException] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim