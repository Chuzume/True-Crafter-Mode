
# シールドクラッシャーでエグいダメージ出されると困る
    execute if entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]},nbt=!{Attributes:[{Name:"minecraft:generic.attack_damage",Base:-1.0d}]}] run data modify entity @s Attributes set value [{Name:"generic.attack_damage",Base:-1.0d}]
    execute if entity @s[nbt=!{HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]},nbt=!{Attributes:[{Name:"minecraft:generic.attack_damage",Base:2.0d}]}] run data modify entity @s Attributes set value [{Name:"generic.attack_damage",Base:2.0d}]

# エンチャされた弓を拾ったら遠距離オンリーに移行
    execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s remove T.HardSke_Ranged
    execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s add T.HardSke_Ranged2

# 近接武器を拾ったら近距離オンリーに移行
    execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s remove T.HardSke_Ranged
    execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s remove T.HardSke_Melee
    execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s add T.HardSke_Melee2

# 離れてる時は弓
    execute if entity @s[tag=T.HardSke_Melee] if entity @a[distance=5..16] run item replace entity @s weapon.mainhand with minecraft:bow
    execute if entity @s[tag=T.HardSke_Melee] if entity @a[distance=5..16] run tag @s add T.HardSke_Ranged
    tag @s[tag=T.HardSke_Ranged] remove T.HardSke_Melee

# 近い時は近接武器
    execute if entity @s[tag=T.HardSke_Ranged] if entity @a[distance=..5] run item replace entity @s weapon.mainhand with minecraft:stone_axe{display: {Name: '{"text":"Shield Crasher","italic":false}'}, Enchantments: [{id: "minecraft:knockback", lvl: 2}], AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attackSpeed", Amount: -2.4d, Operation: 0, UUID: [I; 0, 752434, 0, 295765], Slot: "mainhand"}, {AttributeName: "generic.attack_damage", Name: "generic.attackDamage", Amount: 4.0d, Operation: 0, UUID: [I; 0, 759233, 0, 533], Slot: "mainhand"}]}
    execute if entity @s[tag=T.HardSke_Ranged] if entity @a[distance=..5] run tag @s add T.HardSke_Melee
    tag @s[tag=T.HardSke_Melee] remove T.HardSke_Ranged

# 近接当てたら即座にバックステップ
    execute if entity @s[tag=T.HardSke_Melee,nbt={OnGround:1b}] if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T.HardMoveset1 39
    execute if entity @s[tag=T.HardSke_Ranged2,nbt={OnGround:1b}] if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T.HardMoveset1 39

# 背後チェックしてダッシュ/バックステップ
    execute if entity @s[tag=T.HardSke_Melee] if entity @a[distance=..5] run scoreboard players add @s T.HardMoveset1 1
    execute if entity @s[tag=T.HardSke_Ranged2] if entity @a[distance=..5] run scoreboard players add @s T.HardMoveset1 1
    scoreboard players set @s[tag=!T.HardSke_Ranged,scores={T.HardMoveset1=40}] Chuz_Speed -7
    execute if entity @s[tag=!T.HardSke_Ranged,scores={T.HardMoveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_step
    execute if entity @s[tag=!T.HardSke_Ranged,scores={T.HardMoveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
    execute if entity @s[tag=!T.HardSke_Ranged,scores={T.HardMoveset1=40}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
    scoreboard players reset @s[scores={T.HardMoveset1=40..}] T.HardMoveset1

# 前をチェックして飛びかかり
    execute if entity @s[tag=T.HardSke_Melee2] positioned ^ ^ ^-0.5 facing entity @p[distance=..16] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.HardMoveset2 1

# 前方にブロックがあればスコアリセット
    execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s T.HardMoveset2
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s T.HardMoveset2
    scoreboard players set @s[scores={T.HardMoveset2=40}] Chuz_Speed 8
    execute if entity @s[scores={T.HardMoveset2=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
    scoreboard players reset @s[scores={T.HardMoveset2=40..}] T.HardMoveset2

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# 水の中ですいすい
    execute if entity @a[distance=..30] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim