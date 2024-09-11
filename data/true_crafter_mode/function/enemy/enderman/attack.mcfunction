
#攻撃に反応してエンダーアイ召喚
execute if entity @s[nbt=!{HurtTime:0s},tag=!T.HardCooldown] if entity @a[distance=..6,tag=!T.HardException] run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1.5 1
execute if entity @s[nbt=!{HurtTime:0s},tag=!T.HardCooldown] if entity @a[distance=..6,tag=!T.HardException] run particle minecraft:witch ~ ~2 ~ 0 0 0 1 10
execute if entity @s[nbt=!{HurtTime:0s},tag=!T.HardCooldown] if entity @a[distance=..6,tag=!T.HardException] run summon minecraft:vex ~ ~1.5 ~ {Silent:1b,DeathTime:19s,Tags:["T.HardEnder_Eye"],CustomName:'{"text":"Ender Eye"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{ItemEvent:T.HardEnder_Eye,SkullOwner:{Id:[I;797925833,974278225,-1815402419,531687891],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjU2ZmYwY2M5OTkyM2NmMjllM2QwNDM2MTA4Mjc1YmUzNjRhM2FjY2IyZDM0ZDhjN2Y1MGNhMTNkYTIzNTgxOCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999999,ShowParticles:0b}]}
execute if entity @s[nbt=!{HurtTime:0s},tag=!T.HardCooldown] if entity @a[distance=..6,tag=!T.HardException] run tag @s add T.HardCooldown
#しばらくしたら召喚を再使用
scoreboard players add @s[tag=T.HardCooldown] T.HardMoveset1 1
tag @s[scores={T.HardMoveset1=300}] remove T.HardCooldown
scoreboard players reset @s[scores={T.HardMoveset1=300}] T.HardMoveset1

#目の前にブロックがあり、長いことプレイヤーが近くにいるならそれを破壊
execute if entity @a[distance=..6,tag=!T.HardException] run scoreboard players add @s[tag=T.HardCooldown] T.HardMoveset2 1
#ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 0 run scoreboard players reset @s T.HardMoveset2
#スコアが30で破壊
execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 

execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 

execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^1 ^ ^1 #true_crafter_mode:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^-1 ^ ^1 #true_crafter_mode:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T.HardMoveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^ ^ ^1 #true_crafter_mode:no_dig run setblock ^ ^ ^1 air destroy 

scoreboard players reset @s[scores={T.HardMoveset2=30..}] T.HardMoveset2