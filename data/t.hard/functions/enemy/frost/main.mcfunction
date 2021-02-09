#パーティクル
particle minecraft:falling_dust snow ~ ~1 ~ 0.25 0.5 0.25 0 1
particle minecraft:dust 0.7 1 1 1 ~ ~1 ~ 0.25 0.5 0.25 0 1
#サウンド
execute if entity @a[distance=..15] run scoreboard players add @s T.Hard_Moveset2 1
execute if entity @s[scores={T.Hard_Moveset2=80..}] run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1.5 1
execute if entity @s[scores={T.Hard_Moveset2=80..}] run playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1.5 1
scoreboard players reset @e[scores={T.Hard_Moveset2=80..}] T.Hard_Moveset2
#ダメージ
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
#攻撃パターン
execute unless entity @s[scores={T.Hard_Moveset1=30..}] at @s positioned ^ ^ ^-0.5 facing entity @p[distance=..20,tag=!T.Hard_Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.Hard_Moveset1 1
scoreboard players add @s[scores={T.Hard_Moveset1=30..}] T.Hard_Moveset1 1
execute unless entity @p[distance=..20] run scoreboard players set @s T.Hard_Moveset1 0
execute if entity @s[scores={T.Hard_Moveset1=30..40}] run data modify entity @s Motion[1] set value 0.2

execute if entity @s[scores={T.Hard_Moveset1=40}] positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {Marker:1b,Invisible:1b,Tags:[T.Hard_FrostShot,T.Hard_Shot1,T.Hard_Shot0],DisabledSlots:4144959}
execute if entity @s[scores={T.Hard_Moveset1=40}] positioned ~ ~1 ~ run summon armor_stand ^0.25 ^ ^1 {Marker:1b,Invisible:1b,Tags:[T.Hard_FrostShot,T.Hard_Shot2,T.Hard_Shot0],DisabledSlots:4144959}
execute if entity @s[scores={T.Hard_Moveset1=40}] positioned ~ ~1 ~ run summon armor_stand ^-0.25 ^ ^1 {Marker:1b,Invisible:1b,Tags:[T.Hard_FrostShot,T.Hard_Shot3,T.Hard_Shot0],DisabledSlots:4144959}
execute if entity @s[scores={T.Hard_Moveset1=40}] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
scoreboard players set @s[scores={T.Hard_Moveset1=60..}] T.Hard_Moveset1 0
