
#シールドクラッシャーでエグいダメージ出されると困る
#execute if entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]},nbt=!{Attributes:[{Name:"generic.attack_damage",Base:-1.0d}]}] run data merge entity @s {Attributes:[{Name:"generic.attack_damage",Base:-1.0d}]}
#execute if entity @s[nbt=!{HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]},nbt=!{Attributes:[{Name:"generic.attack_damage",Base:2.0d}]}] run data merge entity @s {Attributes:[{Name:"generic.attack_damage",Base:2.0d}]}
#execute if entity @s[nbt=!{HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]},nbt=!{Attributes:[{Name:"generic.attack_damage",Base:2.0d}]}] run say hi

#エンチャされた弓を拾ったら遠距離オンリーに移行
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s remove T.Hard_Ske_Ranged
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s add T.Hard_Ske_Ranged2

#近接武器を拾ったら近距離オンリーに移行
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s remove T.Hard_Ske_Ranged
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s remove T.Hard_Ske_Melee
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s add T.Hard_Ske_Melee2

#離れてる時は弓
execute if entity @s[tag=T.Hard_Ske_Melee] if entity @a[distance=5..16,tag=!T.Hard_Exception] run replaceitem entity @s weapon.mainhand minecraft:bow
execute if entity @s[tag=T.Hard_Ske_Melee] if entity @a[distance=5..16,tag=!T.Hard_Exception] run tag @s add T.Hard_Ske_Ranged
tag @s[tag=T.Hard_Ske_Ranged] remove T.Hard_Ske_Melee

#近い時は近接武器
execute if entity @s[tag=T.Hard_Ske_Ranged] if entity @a[distance=..5,tag=!T.Hard_Exception] run replaceitem entity @s weapon.mainhand minecraft:stone_axe{display:{Name:'{"text":"Shield Crasher","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:2}],AttributeModifiers:[{AttributeName: "generic.attack_speed", Name: "generic.attackSpeed", Amount: -2.4d, Operation: 0, UUID: [I; 0, 752434, 0, 295765], Slot: "mainhand"},{AttributeName: "generic.attack_damage", Name: "generic.attackDamage", Amount: 4.0d, Operation: 0, UUID: [I; 0, 759233, 0, 533], Slot: "mainhand"}]}
execute if entity @s[tag=T.Hard_Ske_Ranged] if entity @a[distance=..5,tag=!T.Hard_Exception] run tag @s add T.Hard_Ske_Melee
tag @s[tag=T.Hard_Ske_Melee] remove T.Hard_Ske_Ranged

#近接当てたら即座にバックステップ
execute if entity @s[tag=T.Hard_Ske_Melee,nbt={OnGround:1b}] if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T.Hard_Moveset1 39
execute if entity @s[tag=T.Hard_Ske_Ranged2,nbt={OnGround:1b}] if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T.Hard_Moveset1 39

#背後チェックしてダッシュ/バックステップ
execute if entity @s[tag=T.Hard_Ske_Melee] if entity @a[distance=..5,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Moveset1 1
execute if entity @s[tag=T.Hard_Ske_Ranged2] if entity @a[distance=..5,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Moveset1 1
scoreboard players set @s[tag=!T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] ChuzSpeed 7
execute if entity @s[tag=!T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step
execute if entity @s[tag=!T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
execute if entity @s[tag=!T.Hard_Ske_Ranged,scores={T.Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1

#前をチェックして飛びかかり
execute if entity @s[tag=T.Hard_Ske_Melee2] positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!T.Hard_Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.Hard_Moveset2 1

#前方にブロックがあればスコアリセット
execute rotated ~ 0 unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s T.Hard_Moveset2
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s T.Hard_Moveset2
scoreboard players set @s[scores={T.Hard_Moveset2=40}] ChuzSpeed 8
execute if entity @s[scores={T.Hard_Moveset2=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
scoreboard players reset @s[scores={T.Hard_Moveset2=40..}] T.Hard_Moveset2

#段差飛び越え
function t.hard:enemy/common/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T.Hard_Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim