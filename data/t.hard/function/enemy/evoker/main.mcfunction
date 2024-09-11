
#どういうわけかゴーレムを分解
execute as @e[type=iron_golem,distance=..5] at @s run function t.hard:enemy/evoker/destroy_golem

#ワープファング ダメージ受けるとカウント進む
execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!t.hardException] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={TrueCrafterMode.Tick=40..}] run scoreboard players add @s TrueCrafterMode.Tick 1
execute if entity @a[distance=..5,tag=!t.hardException] unless entity @s[scores={TrueCrafterMode.Tick=40..}] run scoreboard players add @s TrueCrafterMode.Tick 1
execute unless entity @s[scores={TrueCrafterMode.Tick=40..}] run scoreboard players add @s[nbt={HurtTime:9s}] TrueCrafterMode.Tick 20
scoreboard players set @s[nbt={HurtTime:9s},scores={TrueCrafterMode.Tick=40..}] TrueCrafterMode.Tick 40
execute if entity @s[scores={TrueCrafterMode.Tick=40}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={TrueCrafterMode.Tick=40}] run particle explosion ~ ~1 ~ 0 0 0 0 0
execute if entity @s[scores={TrueCrafterMode.Tick=40}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={TrueCrafterMode.Tick=40}] if entity @a[distance=..5] rotated ~ 0 if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_warp
execute if entity @s[scores={TrueCrafterMode.Tick=40}] if entity @a[distance=..5] rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/foward_warp
execute if entity @s[scores={TrueCrafterMode.Tick=40}] if entity @a[distance=5..16] rotated ~ 0 run function t.hard:enemy/common/foward_warp
scoreboard players add @s[scores={TrueCrafterMode.Tick=40..}] TrueCrafterMode.Tick 1
execute if entity @s[scores={TrueCrafterMode.Tick=42}] rotated ~ 0 run summon evoker_fangs ^ ^ ^2
execute if entity @s[scores={TrueCrafterMode.Tick=42}] rotated ~ 0 run summon evoker_fangs ^1 ^ ^2
execute if entity @s[scores={TrueCrafterMode.Tick=42}] rotated ~ 0 run summon evoker_fangs ^-1 ^ ^2
execute if entity @s[scores={TrueCrafterMode.Tick=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={TrueCrafterMode.Tick=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
scoreboard players reset @s[scores={TrueCrafterMode.Tick=50..}] TrueCrafterMode.Tick

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule t.hardGamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!t.hardException] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim