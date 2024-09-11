
# シールドクラッシャーでエグいダメージ出されると困る
    execute if entity @s[nbt={HandItems: [{components: {"minecraft:custom_name": '{"italic":false,"text":"Shield Crasher"}'}, count: 1, id: "minecraft:stone_axe"}, {}]},nbt=!{attributes:[{id:"minecraft:generic.attack_damage",base:-1.0d}]}] run data modify entity @s attributes set value [{id:"generic.attack_damage",base:-1.0d}]
    execute if entity @s[nbt=!{HandItems: [{components: {"minecraft:custom_name": '{"italic":false,"text":"Shield Crasher"}'}, count: 1, id: "minecraft:stone_axe"}, {}]},nbt=!{attributes:[{id:"minecraft:generic.attack_damage",base:2.0d}]}] run data modify entity @s attributes set value [{id:"generic.attack_damage",base:2.0d}]

# エンチャされた弓を拾ったら遠距離オンリーに移行
    execute if entity @s[nbt={HandItems: [{components: {"minecraft:enchantments": {levels: {}}}, count: 1, id: "minecraft:bow"}, {}]}] run tag @s remove t.hardSke_Ranged
    execute if entity @s[nbt={HandItems: [{components: {"minecraft:enchantments": {levels: {}}}, count: 1, id: "minecraft:bow"}, {}]}] run tag @s add t.hardSke_Ranged2

# 近接武器を拾ったら近距離オンリーに移行
    execute unless entity @s[nbt={HandItems: [{components: {"minecraft:custom_name": '{"italic":false,"text":"Shield Crasher"}'}, count: 1, id: "minecraft:stone_axe"}, {}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",count:1}]}] run tag @s remove t.hardSke_Ranged
    execute unless entity @s[nbt={HandItems: [{components: {"minecraft:custom_name": '{"italic":false,"text":"Shield Crasher"}'}, count: 1, id: "minecraft:stone_axe"}, {}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",count:1}]}] run tag @s remove t.hardSke_Melee
    execute unless entity @s[nbt={HandItems: [{components: {"minecraft:custom_name": '{"italic":false,"text":"Shield Crasher"}'}, count: 1, id: "minecraft:stone_axe"}, {}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",count:1}]}] run tag @s add t.hardSke_Melee2

# 離れてる時は弓
    execute if entity @s[tag=t.hardSke_Melee] if entity @a[distance=5..16] run item replace entity @s weapon.mainhand with minecraft:bow
    execute if entity @s[tag=t.hardSke_Melee] if entity @a[distance=5..16] run tag @s add t.hardSke_Ranged
    tag @s[tag=t.hardSke_Ranged] remove t.hardSke_Melee

# 近い時は近接武器
    execute if entity @s[tag=t.hardSke_Ranged] if entity @a[distance=..5] run item replace entity @s weapon.mainhand with minecraft:stone_axe[minecraft:attribute_modifiers={modifiers:[{amount:-2.4d,id:"minecraft:generic.attack_speed",operation:"add_value",slot:"mainhand",type:"generic.attack_speed"},{amount:4.0d,id:"generic.attack_damage",operation:"add_value",slot:"mainhand",type:"generic.attack_damage"}]},minecraft:enchantments={levels:{"minecraft:knockback":2}},minecraft:custom_name='{"italic":false,"text":"Shield Crasher"}']
    execute if entity @s[tag=t.hardSke_Ranged] if entity @a[distance=..5] run tag @s add t.hardSke_Melee
    tag @s[tag=t.hardSke_Melee] remove t.hardSke_Ranged

# 近接当てたら即座にバックステップ
    execute if entity @s[tag=t.hardSke_Melee,nbt={OnGround:1b}] if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s t.hardMoveset1 39
    execute if entity @s[tag=t.hardSke_Ranged2,nbt={OnGround:1b}] if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s t.hardMoveset1 39

# 背後チェックしてダッシュ/バックステップ
    execute if entity @s[tag=t.hardSke_Melee] if entity @a[distance=..5] run scoreboard players add @s t.hardMoveset1 1
    execute if entity @s[tag=t.hardSke_Ranged2] if entity @a[distance=..5] run scoreboard players add @s t.hardMoveset1 1
    scoreboard players set @s[tag=!t.hardSke_Ranged,scores={t.hardMoveset1=40}] Chuz_Speed -7
    execute if entity @s[tag=!t.hardSke_Ranged,scores={t.hardMoveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step
    execute if entity @s[tag=!t.hardSke_Ranged,scores={t.hardMoveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
    execute if entity @s[tag=!t.hardSke_Ranged,scores={t.hardMoveset1=40}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
    scoreboard players reset @s[scores={t.hardMoveset1=40..}] t.hardMoveset1

# 前をチェックして飛びかかり
    execute if entity @s[tag=t.hardSke_Melee2] positioned ^ ^ ^-0.5 facing entity @p[distance=..16] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s t.hardMoveset2 1

# 前方にブロックがあればスコアリセット
    execute rotated ~ 0 unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s t.hardMoveset2
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s t.hardMoveset2
    scoreboard players set @s[scores={t.hardMoveset2=40}] Chuz_Speed 8
    execute if entity @s[scores={t.hardMoveset2=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
    scoreboard players reset @s[scores={t.hardMoveset2=40..}] t.hardMoveset2

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule t.hardGamerule1 matches 1 run function t.hard:enemy/common/break_door

# 水の中ですいすい
    execute if entity @a[distance=..30] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim