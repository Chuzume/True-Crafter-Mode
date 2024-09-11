
# 付近にだれかいるなら起爆準備
    execute if entity @a[distance=..3,tag=!t.hardException,tag=ChuzStandstill] run tag @s add t.hardIgnited
    scoreboard players add @s[tag=t.hardIgnited] t.hardMoveset1 1
    effect give @s[scores={t.hardMoveset1=30..}] resistance 1 4 true

# 爆発を起こす 帯電時は強化される
    execute if entity @s[nbt=!{powered:1b},scores={t.hardMoveset1=30}] run summon fireball ~ ~1 ~ {ExplosionPower:3,Motion:[0.0,-3.0,0.0]} 
    execute if entity @s[nbt={powered:1b},scores={t.hardMoveset1=30}] run summon fireball ~ ~1 ~ {ExplosionPower:4,Motion:[0.0,-3.0,0.0]} 

# 難易度によっては3回で死ぬ
    execute if score #t.hard_Gamerule t.hardGamerule4 matches 1 run scoreboard players add @s[scores={t.hardMoveset1=30}] t.hardMoveset3 1
    execute if score @s t.hardMoveset3 matches 3 run function t.hard:enemy/common/go_to_void

# 行動値リセット
    scoreboard players reset @s[scores={t.hardMoveset1=45..}] t.hardMoveset1
    execute unless entity @a[distance=..7] run scoreboard players reset @s t.hardMoveset1
    execute unless entity @a[distance=..7,tag=!t.hardException] run tag @s remove t.hardIgnited

# 起爆中なら近くのエンティティを逃がす
    execute if entity @s[tag=t.hardIgnited] as @e[distance=0.1..6,type=#t.hard:hostiles] at @s facing entity @e[type=creeper,limit=1,sort=nearest] eyes run function t.hard:enemy/common/dodge_creeper

# 着火されちゃった場合はFuseを30に
    data merge entity @s[nbt={ignited:1b}] {Fuse:30} 
    tag @s[nbt={ignited:1b}] add t.hardIgnited

# t.hard_Powerdタグ持ってるなら雷を自分に
    scoreboard players add @s[tag=t.hardPowered,nbt=!{powered:1b}] t.hardMoveset2 1
    execute if entity @s[tag=t.hardPowered,nbt=!{powered:1b}] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 1
    effect give @s[scores={t.hardMoveset2=60}] resistance 1 4 true
    effect give @s[scores={t.hardMoveset2=60}] fire_resistance 10 0
    execute at @s[scores={t.hardMoveset2=60}] run summon lightning_bolt ~ ~ ~
    scoreboard players reset @s[scores={t.hardMoveset2=60}] t.hardMoveset2

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule t.hardGamerule1 matches 1 run function t.hard:enemy/common/break_door