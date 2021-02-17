
#離れてる時は弓
execute if entity @s[tag=T.Hard_Piglin_Crossbow_Melee] if entity @e[type=#t.hard:piglin_enemy,distance=4..16,tag=!T.Hard_Exception] run replaceitem entity @s weapon.mainhand crossbow
execute if entity @s[tag=T.Hard_Piglin_Crossbow_Melee] if entity @e[type=#t.hard:piglin_enemy,distance=4..16,tag=!T.Hard_Exception] run tag @s add T.Hard_Piglin_Crossbow_Ranged
tag @s[tag=T.Hard_Piglin_Crossbow_Ranged] remove T.Hard_Piglin_Crossbow_Melee

#近い時は近接武器
execute if entity @s[tag=T.Hard_Piglin_Crossbow_Ranged] if entity @e[type=#t.hard:piglin_enemy,distance=..4,tag=!T.Hard_Exception] run replaceitem entity @s weapon.mainhand minecraft:golden_axe{display:{Name:'{"text":"Pig Busher","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:2}],AttributeModifiers:[{AttributeName: "generic.attack_speed", Name: "generic.attackSpeed", Amount: -2.4d, Operation: 0, UUID: [I; 0, 752434, 0, 295765], Slot: "mainhand"},{AttributeName: "generic.attack_damage", Name: "generic.attackDamage", Amount: 4.0d, Operation: 0, UUID: [I; 0, 759233, 0, 533], Slot: "mainhand"}]}
execute if entity @s[tag=T.Hard_Piglin_Crossbow_Ranged] if entity @e[type=#t.hard:piglin_enemy,distance=..4,tag=!T.Hard_Exception] run tag @s add T.Hard_Piglin_Crossbow_Melee
tag @s[tag=T.Hard_Piglin_Crossbow_Melee] remove T.Hard_Piglin_Crossbow_Ranged

#近接当てたら即座にバックステップ
execute if entity @s[tag=T.Hard_Piglin_Crossbow_Melee,nbt={OnGround:1b}] if entity @e[type=#t.hard:piglin_enemy,distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T.Hard_Moveset1 39

#背後チェックしてダッシュ/バックステップ
execute if entity @s[tag=T.Hard_Piglin_Crossbow_Melee] if entity @e[type=#t.hard:piglin_enemy,distance=..5,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Moveset1 1
scoreboard players set @s[tag=!T.Hard_Piglin_Crossbow_Ranged,scores={T.Hard_Moveset1=40}] ChuzSpeed 7
execute if entity @s[tag=!T.Hard_Piglin_Crossbow_Ranged,scores={T.Hard_Moveset1=40}] facing entity @e[type=#t.hard:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step
execute if entity @s[tag=!T.Hard_Piglin_Crossbow_Ranged,scores={T.Hard_Moveset1=40}] facing entity @e[type=#t.hard:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
execute if entity @s[tag=!T.Hard_Piglin_Crossbow_Ranged,scores={T.Hard_Moveset1=40}] facing entity @e[type=#t.hard:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^-1 ^-3 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1
