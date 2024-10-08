#パーティクル
execute if entity @s[scores={TMCM.Tick=5..}] run particle end_rod ~ ~0.1 ~ 0.25 0 0.25 0 1
execute if entity @s[scores={TMCM.Tick=5..}] run particle portal ~ ~0.1 ~ 0.25 0 0.25 0 2
#範囲内だと警告
execute if entity @s[scores={TMCM.Tick=5..}] if entity @a[distance=..2] run playsound block.note_block.pling neutral @p ~ ~ ~ 1 2
#
execute at @p unless entity @s[scores={TMCM.Tick=0..}] run spreadplayers ~ ~ 4 8 false @s
scoreboard players add @s[nbt={OnGround:1b}] TMCM.Tick 1
execute if entity @s[scores={TMCM.Tick=40}] run effect give @e[distance=..2] minecraft:instant_damage 1 0
execute if entity @s[scores={TMCM.Tick=40}] at @e[distance=..2] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:20b,Duration:9,ShowParticles:0b}]}
execute if entity @s[scores={TMCM.Tick=40}] run particle firework ~ ~10 ~ 0.1 5 0.1 0 50
execute if entity @s[scores={TMCM.Tick=40}] run particle minecraft:portal ~ ~ ~ 0 0 0 2 15
execute if entity @s[scores={TMCM.Tick=40}] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 0
execute if entity @s[scores={TMCM.Tick=40}] run particle minecraft:poof ~ ~ ~ 0 0 0 0.1 15
execute if entity @s[scores={TMCM.Tick=40}] run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 2 1
execute if entity @s[scores={TMCM.Tick=40}] run playsound minecraft:item.trident.thunder neutral @a ~ ~ ~ 1.5 2
execute if entity @s[scores={TMCM.Tick=40}] run kill @s