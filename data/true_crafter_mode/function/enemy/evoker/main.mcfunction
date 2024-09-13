
#どういうわけかゴーレムを分解
execute as @e[type=iron_golem,distance=..5] at @s run function true_crafter_mode:enemy/evoker/destroy_golem 

#ワープファング ダメージ受けるとカウント進む
execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!TMCM.Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={TMCM.Tick=40..}] run scoreboard players add @s TMCM.Tick 1
execute if entity @a[distance=..5,tag=!TMCM.Exception] unless entity @s[scores={TMCM.Tick=40..}] run scoreboard players add @s TMCM.Tick 1
execute unless entity @s[scores={TMCM.Tick=40..}] run scoreboard players add @s[nbt={HurtTime:9s}] TMCM.Tick 20
scoreboard players set @s[nbt={HurtTime:9s},scores={TMCM.Tick=40..}] TMCM.Tick 40
execute if entity @s[scores={TMCM.Tick=40}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={TMCM.Tick=40}] run particle explosion ~ ~1 ~ 0 0 0 0 0
execute if entity @s[scores={TMCM.Tick=40}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={TMCM.Tick=40}] if entity @a[distance=..5] rotated ~ 0 if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_warp
execute if entity @s[scores={TMCM.Tick=40}] if entity @a[distance=..5] rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/foward_warp
execute if entity @s[scores={TMCM.Tick=40}] if entity @a[distance=5..16] rotated ~ 0 run function true_crafter_mode:enemy/common/foward_warp
scoreboard players add @s[scores={TMCM.Tick=40..}] TMCM.Tick 1
execute if entity @s[scores={TMCM.Tick=42}] rotated ~ 0 run summon evoker_fangs ^ ^ ^2
execute if entity @s[scores={TMCM.Tick=42}] rotated ~ 0 run summon evoker_fangs ^1 ^ ^2
execute if entity @s[scores={TMCM.Tick=42}] rotated ~ 0 run summon evoker_fangs ^-1 ^ ^2
execute if entity @s[scores={TMCM.Tick=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={TMCM.Tick=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
scoreboard players reset @s[scores={TMCM.Tick=50..}] TMCM.Tick

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim