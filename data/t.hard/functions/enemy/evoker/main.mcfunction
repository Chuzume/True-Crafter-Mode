
#どういうわけかゴーレムを分解
execute as @e[type=iron_golem,distance=..5] at @s run function t.hard:enemy/evoker/destroy_golem 

#ワープファング ダメージ受けるとカウント進む
execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!T.Hard_Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={T.Hard_Moveset1=40..}] run scoreboard players add @s T.Hard_Moveset1 1
execute if entity @a[distance=..5,tag=!T.Hard_Exception] unless entity @s[scores={T.Hard_Moveset1=40..}] run scoreboard players add @s T.Hard_Moveset1 1
execute unless entity @s[scores={T.Hard_Moveset1=40..}] run scoreboard players add @s[nbt={HurtTime:9s}] T.Hard_Moveset1 20
scoreboard players set @s[nbt={HurtTime:9s},scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1 40
execute if entity @s[scores={T.Hard_Moveset1=40}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={T.Hard_Moveset1=40}] run particle explosion ~ ~1 ~ 0 0 0 0 0
execute if entity @s[scores={T.Hard_Moveset1=40}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={T.Hard_Moveset1=40}] if entity @a[distance=..5] rotated ~ 0 if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_warp
execute if entity @s[scores={T.Hard_Moveset1=40}] if entity @a[distance=..5] rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/foward_warp
execute if entity @s[scores={T.Hard_Moveset1=40}] if entity @a[distance=5..16] rotated ~ 0 run function t.hard:enemy/common/foward_warp
scoreboard players add @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1 1
execute if entity @s[scores={T.Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^ ^ ^2
execute if entity @s[scores={T.Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^1 ^ ^2
execute if entity @s[scores={T.Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^-1 ^ ^2
execute if entity @s[scores={T.Hard_Moveset1=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={T.Hard_Moveset1=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
scoreboard players reset @s[scores={T.Hard_Moveset1=50..}] T.Hard_Moveset1

#段差飛び越え
function t.hard:enemy/common/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T.Hard_Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim