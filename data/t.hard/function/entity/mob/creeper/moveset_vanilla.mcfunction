
# 自身に起爆中タグつけるだけ
    execute if entity @a[distance=..3,tag=!t.hardException,tag=ChuzStandstill] run tag @s add t.hardIgnited

# 起爆中なら近くのエンティティを逃がす
    execute if entity @s[tag=t.hardIgnited] as @e[distance=0.1..6,type=#t.hard:hostiles] at @s facing entity @e[type=creeper,limit=1,sort=nearest] eyes run function t.hard:enemy/common/dodge_creeper
    execute unless entity @a[nbt=!{ignited:1b},distance=..7] run tag @s remove t.hardIgnited

#着火されちゃった場合はFuseを30に
tag @s[nbt={ignited:1b}] add t.hardIgnited

#t.hard_Powerdタグ持ってるなら雷を自分に
scoreboard players add @s[tag=t.hardPowered,nbt=!{powered:1b}] t.hardMoveset2 1
execute if entity @s[tag=t.hardPowered,nbt=!{powered:1b}] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 1
effect give @s[scores={t.hardMoveset2=60}] resistance 1 4 true
effect give @s[scores={t.hardMoveset2=60}] fire_resistance 10 0
execute at @s[scores={t.hardMoveset2=60}] run summon lightning_bolt ~ ~ ~
scoreboard players reset @s[scores={t.hardMoveset2=60}] t.hardMoveset2

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule t.hardGamerule1 matches 1 run function t.hard:enemy/common/break_door