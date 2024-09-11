
# 離れてる時は弓
    execute if entity @s[tag=t.hardPiglin_Crossbow_Melee] if entity @e[type=#t.hard:piglin_enemy,distance=4..16,tag=!t.hardException] run item replace entity @s weapon.mainhand with crossbow
    execute if entity @s[tag=t.hardPiglin_Crossbow_Melee] if entity @e[type=#t.hard:piglin_enemy,distance=4..16,tag=!t.hardException] run tag @s add t.hardPiglin_Crossbow_Ranged
    tag @s[tag=t.hardPiglin_Crossbow_Ranged] remove t.hardPiglin_Crossbow_Melee

# 近い時は近接武器
    execute if entity @s[tag=t.hardPiglin_Crossbow_Ranged] if entity @e[type=#t.hard:piglin_enemy,distance=..4,tag=!t.hardException] run item replace entity @s weapon.mainhand with minecraft:golden_axe[minecraft:attribute_modifiers={modifiers:[{amount:-2.4d,id:"minecraft:generic.attack_speed",operation:"add_value",slot:"mainhand",type:"generic.attack_speed"},{amount:4.0d,id:"generic.attack_damage",operation:"add_value",slot:"mainhand",type:"generic.attack_damage",}]},minecraft:enchantments={levels:{"minecraft:knockback":2}},minecraft:custom_name='{"text":"Pig Busher","italic":false}']
    execute if entity @s[tag=t.hardPiglin_Crossbow_Ranged] if entity @e[type=#t.hard:piglin_enemy,distance=..4,tag=!t.hardException] run tag @s add t.hardPiglin_Crossbow_Melee
    tag @s[tag=t.hardPiglin_Crossbow_Melee] remove t.hardPiglin_Crossbow_Ranged

# 近接当てたら即座にバックステップ
    execute if entity @s[tag=t.hardPiglin_Crossbow_Melee,nbt={OnGround:1b}] if entity @e[type=#t.hard:piglin_enemy,distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s t.hardMoveset1 39

# 背後チェックしてダッシュ/バックステップ
    execute if entity @s[tag=t.hardPiglin_Crossbow_Melee] if entity @e[type=#t.hard:piglin_enemy,distance=..5,tag=!t.hardException] run scoreboard players add @s t.hardMoveset1 1
    execute if entity @s[tag=!t.hardPiglin_Crossbow_Ranged,scores={t.hardMoveset1=40}] run function t.hard:enemy/common/leap_attack
    execute if entity @s[tag=!t.hardPiglin_Crossbow_Ranged,scores={t.hardMoveset1=40}] facing entity @e[type=#t.hard:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run scoreboard players set @s Chuz_Speed -7
    execute if entity @s[tag=!t.hardPiglin_Crossbow_Ranged,scores={t.hardMoveset1=40}] facing entity @e[type=#t.hard:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run scoreboard players set @s Chuz_Speed 7
    execute if entity @s[tag=!t.hardPiglin_Crossbow_Ranged,scores={t.hardMoveset1=40}] facing entity @e[type=#t.hard:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 if block ^ ^-1 ^-3 #t.hard:no_collision run scoreboard players set @s Chuz_Speed 7
    scoreboard players reset @s[scores={t.hardMoveset1=40..}] t.hardMoveset1