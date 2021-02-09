
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

#自身に起爆中タグつけるだけ
execute if entity @a[distance=..3,tag=!T.Hard_Exception,nbt={Motion:[0.0,-0.0784000015258789d,0.0]}] run tag @s add T.Hard_Ignited

#起爆中なら近くのエンティティを逃がす
execute if entity @s[tag=T.Hard_Ignited] as @e[distance=0.1..6,type=#t.hard:hostiles] at @s run function t.hard:enemy/common/dodge_creeper
execute unless entity @a[nbt=!{ignited:1b},distance=..7] run tag @s remove T.Hard_Ignited

#着火されちゃった場合はFuseを30に
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