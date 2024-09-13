
# 離れてる時は弓
    execute if entity @s[tag=TMCM.Piglin.Crossbow_Melee] if entity @e[type=#true_crafter_mode:piglin_enemy,distance=4..16,tag=!TMCM.Exception] run item replace entity @s weapon.mainhand with crossbow
    execute if entity @s[tag=TMCM.Piglin.Crossbow_Melee] if entity @e[type=#true_crafter_mode:piglin_enemy,distance=4..16,tag=!TMCM.Exception] run tag @s add TMCM.Piglin.Crossbow.Ranged
    tag @s[tag=TMCM.Piglin.Crossbow.Ranged] remove TMCM.Piglin.Crossbow_Melee

# 近い時は近接武器
    execute if entity @s[tag=TMCM.Piglin.Crossbow.Ranged] if entity @e[type=#true_crafter_mode:piglin_enemy,distance=..4,tag=!TMCM.Exception] run item replace entity @s weapon.mainhand with minecraft:golden_axe{display: {Name: '{"text":"Pig Busher","italic":false}'}, Enchantments: [{id: "minecraft:knockback", lvl: 2}], AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attackSpeed", Amount: -2.4d, Operation: 0, UUID: [I; 0, 752434, 0, 295765], Slot: "mainhand"}, {AttributeName: "generic.attack_damage", Name: "generic.attackDamage", Amount: 4.0d, Operation: 0, UUID: [I; 0, 759233, 0, 533], Slot: "mainhand"}]}
    execute if entity @s[tag=TMCM.Piglin.Crossbow.Ranged] if entity @e[type=#true_crafter_mode:piglin_enemy,distance=..4,tag=!TMCM.Exception] run tag @s add TMCM.Piglin.Crossbow_Melee
    tag @s[tag=TMCM.Piglin.Crossbow_Melee] remove TMCM.Piglin.Crossbow.Ranged

# 近接当てたら即座にバックステップ
    execute if entity @s[tag=TMCM.Piglin.Crossbow_Melee,nbt={OnGround:1b}] if entity @e[type=#true_crafter_mode:piglin_enemy,distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s TMCM.Tick 39

# 背後チェックしてダッシュ/バックステップ
    execute if entity @s[tag=TMCM.Piglin.Crossbow_Melee] if entity @e[type=#true_crafter_mode:piglin_enemy,distance=..5,tag=!TMCM.Exception] run scoreboard players add @s TMCM.Tick 1
    execute if entity @s[tag=!TMCM.Piglin.Crossbow.Ranged,scores={TMCM.Tick=40}] run function true_crafter_mode:enemy/common/leap_attack
    execute if entity @s[tag=!TMCM.Piglin.Crossbow.Ranged,scores={TMCM.Tick=40}] facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run scoreboard players set @s Chuz.Speed -7
    execute if entity @s[tag=!TMCM.Piglin.Crossbow.Ranged,scores={TMCM.Tick=40}] facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision run scoreboard players set @s Chuz.Speed 7
    execute if entity @s[tag=!TMCM.Piglin.Crossbow.Ranged,scores={TMCM.Tick=40}] facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^-1 ^-3 #true_crafter_mode:no_collision run scoreboard players set @s Chuz.Speed 7
    scoreboard players reset @s[scores={TMCM.Tick=40..}] TMCM.Tick