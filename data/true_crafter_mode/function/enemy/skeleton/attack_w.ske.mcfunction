
#エンチャされた弓を拾ったら遠距離オンリーに移行
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s add T.HardSke_NoSwitch

#近接武器を拾ったら近距離オンリーに移行
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s add T.HardSke_NoSwitch

#離れてる時は弓
execute if entity @s[tag=T.HardSke_Melee,tag=!T.HardSke_NoSwitch] if entity @e[type=#true_crafter_mode:w.skeleton_enemy,distance=5..16,tag=!T.HardException] run item replace entity @s weapon.mainhand with minecraft:bow
execute if entity @s[tag=T.HardSke_Melee] if entity @e[type=#true_crafter_mode:w.skeleton_enemy,distance=5..16,tag=!T.HardException] run tag @s add T.HardSke_Ranged
tag @e[tag=T.HardSke_Ranged] remove T.HardSke_Melee

#近い時は近接武器
execute if entity @s[tag=T.HardSke_Ranged,tag=!T.HardSke_NoSwitch] if entity @e[type=#true_crafter_mode:w.skeleton_enemy,distance=..5,tag=!T.HardException] run item replace entity @s weapon.mainhand with minecraft:stone_sword
execute if entity @s[tag=T.HardSke_Ranged] if entity @e[type=#true_crafter_mode:w.skeleton_enemy,distance=..5,tag=!T.HardException] run tag @s add T.HardSke_Melee
tag @e[tag=T.HardSke_Melee] remove T.HardSke_Ranged

#背後チェックして飛びかかり/バックステップ
execute if entity @s[tag=T.HardSke_Ranged2] if entity @e[type=#true_crafter_mode:w.skeleton_enemy,distance=..5,tag=!T.HardException] run scoreboard players add @s T.HardMoveset1 1
execute if entity @s[tag=T.HardSke_Ranged] positioned ^ ^ ^-0.5 facing entity @e[type=#true_crafter_mode:w.skeleton_enemy,distance=..16,tag=!T.HardException,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.HardMoveset1 1
scoreboard players set @s[tag=T.HardSke_Ranged,scores={T.HardMoveset1=40}] Chuz_Speed 8
execute if entity @s[tag=T.HardSke_Ranged,scores={T.HardMoveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack

execute if entity @s[tag=T.HardSke_Melee] if entity @e[type=#true_crafter_mode:w.skeleton_enemy,distance=..5,tag=!T.HardException] run scoreboard players add @s T.HardMoveset1 1
scoreboard players set @s[tag=T.HardSke_Melee,scores={T.HardMoveset1=40}] Chuz_Speed 8
execute if entity @s[tag=!T.HardSke_Ranged,scores={T.HardMoveset1=40}] facing entity @e[type=#true_crafter_mode:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_step
execute if entity @s[tag=!T.HardSke_Ranged,scores={T.HardMoveset1=40}] facing entity @e[type=#true_crafter_mode:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
execute if entity @s[tag=!T.HardSke_Ranged,scores={T.HardMoveset1=40}] facing entity @e[type=#true_crafter_mode:w.skeleton_enemy,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^-1 ^-3 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
scoreboard players reset @s[scores={T.HardMoveset1=40..}] T.HardMoveset1

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

#水の中ですいすい
execute if entity @e[type=#true_crafter_mode:w.skeleton_enemy,distance=..30,tag=!T.HardException] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim