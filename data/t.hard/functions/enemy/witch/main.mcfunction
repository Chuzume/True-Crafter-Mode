
#クリーパーに対して雷撃
execute at @e[tag=!T.Hard_Powered,type=creeper,distance=..8] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
execute at @e[tag=!T.Hard_Powered,type=creeper,distance=..8] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
tag @e[tag=!T.Hard_Powered,type=creeper,distance=..8] add T.Hard_Powered 

#豚を変換
execute as @e[type=pig,distance=..8] at @s run function t.hard:enemy/witch/pig_convert

#ウサギを変換
execute as @e[type=rabbit,distance=..8,nbt=!{RabbitType:99}] at @s run function t.hard:enemy/witch/rabbiT.convert

#バフを配る
execute as @e[type=#t.hard:hostiles,type=!witch,distance=0.1..8] at @s run function t.hard:enemy/witch/buff

#ワープ
execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!T.Hard_Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={T.Hard_Moveset1=40..}] run scoreboard players add @s T.Hard_Moveset1 1
execute if entity @a[distance=..5,tag=!T.Hard_Exception] unless entity @s[scores={T.Hard_Moveset1=40..}] run scoreboard players add @s T.Hard_Moveset1 1
execute if entity @s[scores={T.Hard_Moveset1=40}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={T.Hard_Moveset1=40}] run particle explosion ~ ~1 ~ 0 0 0 0 0
execute if entity @s[scores={T.Hard_Moveset1=40}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={T.Hard_Moveset1=40}] facing entity @p[distance=..5] eyes rotated ~ 0 if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_warp
execute if entity @s[scores={T.Hard_Moveset1=40}] facing entity @p[distance=..5] eyes rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/foward_warp
execute if entity @s[scores={T.Hard_Moveset1=40}] if entity @a[distance=5..16] rotated ~ 0 run function t.hard:enemy/common/foward_warp
scoreboard players add @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1 1
#execute if entity @s[scores={T.Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^ ^ ^2
#execute if entity @s[scores={T.Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^1 ^ ^2
#execute if entity @s[scores={T.Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^-1 ^ ^2
execute if entity @s[scores={T.Hard_Moveset1=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={T.Hard_Moveset1=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
scoreboard players reset @s[scores={T.Hard_Moveset1=80..}] T.Hard_Moveset1

#段差飛び越え
function t.hard:enemy/common/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T.Hard_Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim