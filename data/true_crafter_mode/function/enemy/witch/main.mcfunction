
# クリーパーに対して雷撃
    execute at @e[tag=!T.HardPowered,type=creeper,distance=..8] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
    execute at @e[tag=!T.HardPowered,type=creeper,distance=..8] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
    tag @e[tag=!T.HardPowered,type=creeper,distance=..8] add T.HardPowered 

# 豚を変換
    execute as @e[type=pig,tag=!Chuz.NonVanillaMob,tag=!D.Gun_Common,distance=..8] at @s run function true_crafter_mode:enemy/witch/pig_convert

# ウサギを変換
    execute as @e[type=rabbit,tag=!Chuz.NonVanillaMob,distance=..8,nbt=!{RabbitType:99}] at @s run function true_crafter_mode:enemy/witch/rabbit_convert

# バフを配る
    execute as @e[type=#true_crafter_mode:hostiles,type=!witch,distance=0.1..8] at @s run function true_crafter_mode:enemy/witch/buff

# ワープ
<<<<<<< HEAD:data/t.hard/function/enemy/witch/main.mcfunction
    execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!TMCM.Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={TMCM.Tick=40..}] run scoreboard players add @s TMCM.Tick 1
    execute if entity @a[distance=..5,tag=!TMCM.Exception] unless entity @s[scores={TMCM.Tick=40..}] run scoreboard players add @s TMCM.Tick 1
    execute if entity @s[scores={TMCM.Tick=40}] run function true_crafter_mode:enemy/witch/teleport
    scoreboard players add @s[scores={TMCM.Tick=40..}] TMCM.Tick 1
    execute if entity @s[scores={TMCM.Tick=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
    execute if entity @s[scores={TMCM.Tick=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
    scoreboard players reset @s[scores={TMCM.Tick=80..}] TMCM.Tick
=======
    execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!TMCM.Exception] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={TMCM.Tick=40..}] run scoreboard players add @s TMCM.Tick 1
    execute if entity @a[distance=..5,tag=!TMCM.Exception] unless entity @s[scores={TMCM.Tick=40..}] run scoreboard players add @s TMCM.Tick 1
    execute if entity @s[scores={TMCM.Tick=40}] run function true_crafter_mode:enemy/witch/teleport
    scoreboard players add @s[scores={TMCM.Tick=40..}] TMCM.Tick 1
    execute if entity @s[scores={TMCM.Tick=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
    execute if entity @s[scores={TMCM.Tick=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
    scoreboard players reset @s[scores={TMCM.Tick=80..}] TMCM.Tick
>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/witch/main.mcfunction

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# 水の中ですいすい
    execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim