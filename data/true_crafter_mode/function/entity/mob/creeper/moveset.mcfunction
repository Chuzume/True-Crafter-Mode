
# 付近にだれかいるなら起爆準備
    execute if entity @a[distance=..3,tag=!t.hardException,tag=ChuzStandstill] run tag @s add t.hardIgnited
    scoreboard players add @s[tag=t.hardIgnited] TrueCrafterMode.Tick 1
    effect give @s[scores={TrueCrafterMode.Tick=30..}] resistance 1 4 true

# 爆発を起こす 帯電時は強化される
    execute if entity @s[nbt=!{powered:1b},scores={TrueCrafterMode.Tick=30}] run summon fireball ~ ~1 ~ {ExplosionPower:3,Motion:[0.0,-3.0,0.0]} 
    execute if entity @s[nbt={powered:1b},scores={TrueCrafterMode.Tick=30}] run summon fireball ~ ~1 ~ {ExplosionPower:4,Motion:[0.0,-3.0,0.0]} 

# 3回で死ぬ
    scoreboard players add @s[scores={TrueCrafterMode.Tick=30}] t.hardMoveset3 1
    execute if score @s t.hardMoveset3 matches 3 run function t.hard:entity/mob/common_moveset/void_kill

# 行動値リセット
    scoreboard players reset @s[scores={TrueCrafterMode.Tick=45..}] TrueCrafterMode.Tick
    execute unless entity @a[distance=..7] run scoreboard players reset @s TrueCrafterMode.Tick
    execute unless entity @a[distance=..7,tag=!t.hardException] run tag @s remove t.hardIgnited

# 起爆中なら近くのエンティティを逃がす
    execute if entity @s[tag=t.hardIgnited] as @e[distance=0.1..6,type=#t.hard:hostiles] at @s facing entity @e[type=creeper,limit=1,sort=nearest] eyes run function t.hard:enemy/common/dodge_creeper

# 着火されちゃった場合はFuseを30に
    data merge entity @s[nbt={ignited:1b}] {Fuse:30} 
    tag @s[nbt={ignited:1b}] add t.hardIgnited

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick