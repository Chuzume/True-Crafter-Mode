
# 自身に起爆中タグつけるだけ
    execute if entity @a[distance=..3,tag=!T.HardException,tag=ChuzStandstill] run tag @s add T.HardIgnited

# 起爆中なら近くのエンティティを逃がす
    execute if entity @s[tag=T.HardIgnited] as @e[distance=0.1..6,type=#t.hard:hostiles] at @s facing entity @e[type=creeper,limit=1,sort=nearest] eyes run function t.hard:enemy/common/dodge_creeper
    execute unless entity @a[nbt=!{ignited:1b},distance=..7] run tag @s remove T.HardIgnited

#着火されちゃった場合はFuseを30に
tag @s[nbt={ignited:1b}] add T.HardIgnited

#t.hard_Powerdタグ持ってるなら雷を自分に
scoreboard players add @s[tag=T.HardPowered,nbt=!{powered:1b}] T.HardMoveset2 1
execute if entity @s[tag=T.HardPowered,nbt=!{powered:1b}] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 1
effect give @s[scores={T.HardMoveset2=60}] resistance 1 4 true
effect give @s[scores={T.HardMoveset2=60}] fire_resistance 10 0
execute at @s[scores={T.HardMoveset2=60}] run summon lightning_bolt ~ ~ ~
scoreboard players reset @s[scores={T.HardMoveset2=60}] T.HardMoveset2

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.HardGamerule1 matches 1 run function t.hard:enemy/common/break_door