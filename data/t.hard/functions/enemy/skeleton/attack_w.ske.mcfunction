
#エンチャされた弓を拾ったら遠距離オンリーに移行
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s add T.Hard_Ske_NoSwitch

#近接武器を拾ったら近距離オンリーに移行
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s add T.Hard_Ske_NoSwitch

#離れてる時は弓
execute if entity @s[tag=T.Hard_Ske_Melee,tag=!T.Hard_Ske_NoSwitch] if entity @e[type=#t.hard:w.skeleton_enemy,distance=5..16,tag=!T.Hard_Exception] run replaceitem entity @s weapon.mainhand minecraft:bow
execute if entity @s[tag=T.Hard_Ske_Melee] if entity @e[type=#t.hard:w.skeleton_enemy,distance=5..16,tag=!T.Hard_Exception] run tag @s add T.Hard_Ske_Ranged
tag @e[tag=T.Hard_Ske_Ranged] remove T.Hard_Ske_Melee

#近い時は近接武器
execute if entity @s[tag=T.Hard_Ske_Ranged,tag=!T.Hard_Ske_NoSwitch] if entity @e[type=#t.hard:w.skeleton_enemy,distance=..5,tag=!T.Hard_Exception] run replaceitem entity @s weapon.mainhand minecraft:stone_sword
execute if entity @s[tag=T.Hard_Ske_Ranged] if entity @e[type=#t.hard:w.skeleton_enemy,distance=..5,tag=!T.Hard_Exception] run tag @s add T.Hard_Ske_Melee
tag @e[tag=T.Hard_Ske_Melee] remove T.Hard_Ske_Ranged

#背後チェックして飛びかかり/バックステップ
execute if entity @s[tag=T.Hard_Ske_Ranged2] if entity @e[type=#t.hard:w.skeleton_enemy,distance=..5,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Moveset1 1
execute if entity @s[tag=T.Hard_Ske_Ranged] positioned ^ ^ ^-0.5 facing entity @e[type=#t.hard:w.skeleton_enemy,distance=..16,tag=!T.Hard_Exception,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.Hard_Moveset1 1
scoreboard players set @s[tag=T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] ChuzSpeed 8
execute if entity @s[tag=T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack

execute if entity @s[tag=T.Hard_Ske_Melee] if entity @e[type=#t.hard:w.skeleton_enemy,distance=..5,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Moveset1 1
scoreboard players set @s[tag=T.Hard_Ske_Melee,scores={T.Hard_Moveset1=40}] ChuzSpeed 8
execute if entity @s[tag=!T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] facing entity @e[type=#t.hard:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step
execute if entity @s[tag=!T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] facing entity @e[type=#t.hard:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
execute if entity @s[tag=!T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] facing entity @e[type=#t.hard:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^-1 ^-3 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1

#段差飛び越え
function t.hard:enemy/common/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @e[type=#t.hard:w.skeleton_enemy,distance=..30,tag=!T.Hard_Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim