# パーティクル
    particle falling_dust{block_state:{Name:snow}} ~ ~1 ~ 0.25 0.5 0.25 0 1
    particle dust{color:[0.7,1.0,1.0],scale:1} ~ ~1 ~ 0.25 0.5 0.25 0 1

# サウンド
    execute if predicate t.hard:battle_mode run scoreboard players add @s t.hardMoveset2 1
    execute if entity @s[scores={t.hardMoveset2=80..}] run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1.5 1
    execute if entity @s[scores={t.hardMoveset2=80..}] run playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1.5 1
    scoreboard players reset @e[scores={t.hardMoveset2=80..}] t.hardMoveset2

# ダメージ
    execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 1
    execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1

# 攻撃パターン
    execute unless entity @s[scores={t.hardMoveset1=30..}] at @s positioned ^ ^ ^-0.5 facing entity @p[distance=..20,tag=!t.hardException] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s t.hardMoveset1 1
    scoreboard players add @s[scores={t.hardMoveset1=30..}] t.hardMoveset1 1
    execute unless entity @p[distance=..20] run scoreboard players set @s t.hardMoveset1 0
    execute if entity @s[scores={t.hardMoveset1=30..40}] run data modify entity @s Motion[1] set value 0.2

# 射撃
    execute if entity @s[scores={t.hardMoveset1=40}] positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {Marker:1b,Invisible:1b,Tags:[t.hardFrostShot,t.hardShot1,t.hardShot0],DisabledSlots:4144959}
    execute if entity @s[scores={t.hardMoveset1=40}] positioned ~ ~1 ~ run summon armor_stand ^0.25 ^ ^1 {Marker:1b,Invisible:1b,Tags:[t.hardFrostShot,t.hardShot2,t.hardShot0],DisabledSlots:4144959}
    execute if entity @s[scores={t.hardMoveset1=40}] positioned ~ ~1 ~ run summon armor_stand ^-0.25 ^ ^1 {Marker:1b,Invisible:1b,Tags:[t.hardFrostShot,t.hardShot3,t.hardShot0],DisabledSlots:4144959}
    execute if entity @s[scores={t.hardMoveset1=40}] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    scoreboard players set @s[scores={t.hardMoveset1=60..}] t.hardMoveset1 0
