
#攻撃に反応してエンダーアイ召喚
execute if entity @s[nbt=!{HurtTime:0s},tag=!T.Hard_Cooldown] if entity @a[distance=..6,tag=!T.Hard_Exception] run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1.5 1
execute if entity @s[nbt=!{HurtTime:0s},tag=!T.Hard_Cooldown] if entity @a[distance=..6,tag=!T.Hard_Exception] run particle minecraft:witch ~ ~2 ~ 0 0 0 1 10
execute if entity @s[nbt=!{HurtTime:0s},tag=!T.Hard_Cooldown] if entity @a[distance=..6,tag=!T.Hard_Exception] run summon minecraft:vex ~ ~1.5 ~ {Silent:1b,DeathTime:19s,Tags:["T.Hard_Ender_Eye"],CustomName:'{"text":"Ender Eye"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{ItemEvent:T.Hard_Ender_Eye,SkullOwner:{Id:[I;797925833,974278225,-1815402419,531687891],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjU2ZmYwY2M5OTkyM2NmMjllM2QwNDM2MTA4Mjc1YmUzNjRhM2FjY2IyZDM0ZDhjN2Y1MGNhMTNkYTIzNTgxOCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999999,ShowParticles:0b}]}
execute if entity @s[nbt=!{HurtTime:0s},tag=!T.Hard_Cooldown] if entity @a[distance=..6,tag=!T.Hard_Exception] run tag @s add T.Hard_Cooldown
#しばらくしたら召喚を再使用
scoreboard players add @s[tag=T.Hard_Cooldown] T.Hard_Moveset1 1
tag @s[scores={T.Hard_Moveset1=300}] remove T.Hard_Cooldown
scoreboard players reset @s[scores={T.Hard_Moveset1=300}] T.Hard_Moveset1

#目の前にブロックがあり、長いことプレイヤーが近くにいるならそれを破壊
execute if entity @a[distance=..6,tag=!T.Hard_Exception] run scoreboard players add @s[tag=T.Hard_Cooldown] T.Hard_Moveset2 1
#ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 0 run scoreboard players reset @s T.Hard_Moveset2
#スコアが30で破壊
execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^1 ^ ^1 #t.hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^-1 ^ ^1 #t.hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^ ^ ^1 #t.hard:no_dig run setblock ^ ^ ^1 air destroy 

execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^1 ^ ^1 #t.hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^-1 ^ ^1 #t.hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t.hard:no_dig run setblock ^ ^ ^1 air destroy 

execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^1 ^ ^1 #t.hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^-1 ^ ^1 #t.hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T.Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^ ^ ^1 #t.hard:no_dig run setblock ^ ^ ^1 air destroy 

scoreboard players reset @s[scores={T.Hard_Moveset2=30..}] T.Hard_Moveset2