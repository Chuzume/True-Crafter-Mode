
#攻撃に反応してエンダーアイ召喚
execute if entity @s[nbt=!{HurtTime:0s},tag=!t.hardCooldown] if entity @a[distance=..6,tag=!t.hardException] run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1.5 1
execute if entity @s[nbt=!{HurtTime:0s},tag=!t.hardCooldown] if entity @a[distance=..6,tag=!t.hardException] run particle minecraft:witch ~ ~2 ~ 0 0 0 1 10
execute if entity @s[nbt=!{HurtTime:0s},tag=!t.hardCooldown] if entity @a[distance=..6,tag=!t.hardException] run summon minecraft:vex ~ ~1.5 ~ {Silent:1b,DeathTime:19s,Tags:["t.hardEnder_Eye"],CustomName:'{"text":"Ender Eye"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1b,components:{"minecraft:custom_data":{id:t.hardEnder_Eye},"minecraft:profile":{name:"Eye",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTJhMTExMGU0MDIzNWE2MzY2ZmQzNWNlNmQ4OTkzYzVlMDM1YzMwOTMxY2JiMDU3ZjMyM2NhNDA4OTA5ZjgxYSJ9fX0="}]}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F],active_effects:[{id:"invisibility",amplifier:0b,duration:9999999,show_particles:0b}]}
execute if entity @s[nbt=!{HurtTime:0s},tag=!t.hardCooldown] if entity @a[distance=..6,tag=!t.hardException] run tag @s add t.hardCooldown
#しばらくしたら召喚を再使用
scoreboard players add @s[tag=t.hardCooldown] t.hardMoveset1 1
tag @s[scores={t.hardMoveset1=300}] remove t.hardCooldown
scoreboard players reset @s[scores={t.hardMoveset1=300}] t.hardMoveset1

#目の前にブロックがあり、長いことプレイヤーが近くにいるならそれを破壊
execute if entity @a[distance=..6,tag=!t.hardException] run scoreboard players add @s[tag=t.hardCooldown] t.hardMoveset2 1
#ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule t.hardGamerule1 matches 0 run scoreboard players reset @s t.hardMoveset2
#スコアが30で破壊
execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^1 ^ ^1 #t.hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^-1 ^ ^1 #t.hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^ ^ ^1 #t.hard:no_dig run setblock ^ ^ ^1 air destroy 

execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^1 ^ ^1 #t.hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^-1 ^ ^1 #t.hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t.hard:no_dig run setblock ^ ^ ^1 air destroy 

execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^1 ^ ^1 #t.hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^-1 ^ ^1 #t.hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={t.hardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^ ^ ^1 #t.hard:no_dig run setblock ^ ^ ^1 air destroy 

scoreboard players reset @s[scores={t.hardMoveset2=30..}] t.hardMoveset2