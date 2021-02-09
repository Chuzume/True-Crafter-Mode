
#クリーパー
#プレイヤーが微妙な距離にいるなら透明化、近くにいれば解除
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T.Hard_StealthNow,tag=!T.Hard_Ignited] if entity @a[distance=4..16,tag=!T.Hard_Exception] run particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 25
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T.Hard_Ignited] if entity @a[distance=4..16,tag=!T.Hard_Exception] run effect give @s minecraft:invisibility 1 0
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T.Hard_Ignited] if entity @a[distance=4..16,tag=!T.Hard_Exception] run particle smoke ~ ~ ~ 0.25 0 0.25 0 1
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T.Hard_Ignited] if entity @a[distance=4..16,tag=!T.Hard_Exception] run data merge entity @s {Fire:-1s}
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T.Hard_Ignited] if entity @a[distance=4..16,tag=!T.Hard_Exception] run tag @s add T.Hard_StealthNow
execute at @s if entity @a[distance=..4] run effect clear @s minecraft:invisibility
execute at @s[nbt=!{ignited:1b},tag=T.Hard_StealthNow] if entity @a[distance=..4,tag=!T.Hard_Exception] run particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 25
execute at @s[nbt=!{ignited:1b},tag=T.Hard_StealthNow] if entity @a[distance=..4,tag=!T.Hard_Exception] run tag @s remove T.Hard_StealthNow

#自爆の代わりにその場で爆発を起こす　帯電時はちゃっかり強化
execute if entity @a[nbt=!{ignited:1b},distance=..3,tag=!T.Hard_Exception,nbt={Motion:[0.0,-0.0784000015258789d,0.0]}] run tag @s add T.Hard_Ignited
scoreboard players add @s[nbt=!{ignited:1b},tag=T.Hard_Ignited] T.Hard_Moveset1 1
effect give @s[scores={T.Hard_Moveset1=30..}] resistance 1 4 true

execute if entity @s[nbt=!{powered:1b},scores={T.Hard_Moveset1=30}] run summon fireball ~ ~1 ~ {Tags:["Explosion_Ball"],ExplosionPower:3,power:[0.0,-3.0,0.0]} 
execute if entity @s[nbt={powered:1b},scores={T.Hard_Moveset1=30}] run summon fireball ~ ~1 ~ {Tags:["Explosion_Ball"],ExplosionPower:4,power:[0.0,-3.0,0.0]} 
#難易度によっては3回で死ぬ
execute if score #t.hard_Gamerule T.Hard_Gamerule4 matches 1 run scoreboard players add @s[scores={T.Hard_Moveset1=30}] T.Hard_Moveset3 1
tp @s[scores={T.Hard_Moveset3=3}] ~ -1 ~
kill @s[scores={T.Hard_Moveset3=3}]

scoreboard players reset @s[scores={T.Hard_Moveset1=45..}] T.Hard_Moveset1
execute unless entity @a[distance=..7] run scoreboard players reset @s T.Hard_Moveset1
execute unless entity @a[nbt=!{ignited:1b},distance=..7,tag=!T.Hard_Exception] run tag @s remove T.Hard_Ignited

#起爆中なら近くのエンティティを逃がす
execute if entity @s[tag=T.Hard_Ignited] as @e[distance=0.1..6,type=#t.hard:hostiles] at @s run function t.hard:enemy/common/dodge_creeper

#着火されちゃった場合はFuseを30に
data merge entity @s[nbt={ignited:1b}] {Fuse:30} 
tag @s[nbt={ignited:1b}] add T.Hard_Ignited

#t.hard_Powerdタグ持ってるなら雷を自分に
scoreboard players add @s[tag=T.Hard_Powered,nbt=!{powered:1b}] T.Hard_Moveset2 1
execute if entity @s[tag=T.Hard_Powered,nbt=!{powered:1b}] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 1
effect give @s[scores={T.Hard_Moveset2=60}] resistance 1 4 true
effect give @s[scores={T.Hard_Moveset2=60}] fire_resistance 10 0
execute at @s[scores={T.Hard_Moveset2=60}] run summon lightning_bolt ~ ~ ~
scoreboard players reset @s[scores={T.Hard_Moveset2=60}] T.Hard_Moveset2

#段差飛び越え
function t.hard:enemy/common/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 1 run function t.hard:enemy/common/break_door