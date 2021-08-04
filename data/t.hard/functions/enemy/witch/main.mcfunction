
# クリーパーに対して雷撃
    execute at @e[tag=!T.HardPowered,type=creeper,distance=..8] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
    execute at @e[tag=!T.HardPowered,type=creeper,distance=..8] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
    tag @e[tag=!T.HardPowered,type=creeper,distance=..8] add T.HardPowered 

# 豚を変換
    execute as @e[type=pig,tag=!Chuz_NonVanillaMob,tag=!D.Gun_Common,distance=..8] at @s run function t.hard:enemy/witch/pig_convert

# ウサギを変換
    execute as @e[type=rabbit,tag=!Chuz_NonVanillaMob,distance=..8,nbt=!{RabbitType:99}] at @s run function t.hard:enemy/witch/rabbit_convert

# バフを配る
    execute as @e[type=#t.hard:hostiles,type=!witch,distance=0.1..8] at @s run function t.hard:enemy/witch/buff

# ワープ
    execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!T.HardException] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={T.HardMoveset1=40..}] run scoreboard players add @s T.HardMoveset1 1
    execute if entity @a[distance=..5,tag=!T.HardException] unless entity @s[scores={T.HardMoveset1=40..}] run scoreboard players add @s T.HardMoveset1 1
    execute if entity @s[scores={T.HardMoveset1=40}] run function t.hard:enemy/witch/teleport
    scoreboard players add @s[scores={T.HardMoveset1=40..}] T.HardMoveset1 1
    execute if entity @s[scores={T.HardMoveset1=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
    execute if entity @s[scores={T.HardMoveset1=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
    scoreboard players reset @s[scores={T.HardMoveset1=80..}] T.HardMoveset1

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule T.HardGamerule1 matches 1 run function t.hard:enemy/common/break_door

# 水の中ですいすい
    execute if entity @a[distance=..30,tag=!T.HardException] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim