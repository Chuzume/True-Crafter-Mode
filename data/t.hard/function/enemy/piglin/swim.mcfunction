# すいすい
    scoreboard players set @s Chuz_Speed 1
    summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["t.hardRotFix"],Duration:1}
    execute as @e[tag=t.hardRotFix,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @e[type=#t.hard:piglin_enemy,limit=1,sort=nearest] eyes
    data modify entity @s Rotation[0] set from entity @e[tag=t.hardRotFix,limit=1,sort=nearest] Rotation[0]
    execute facing entity @p feet run function t.hard:move
    scoreboard players reset @s Chuz_Speed

# このタグ付与とルートテーブル書き換えがピグリン専用な理由
# 色々ややこしい理由があるのだ
    tag @s add t.hardPiglin_Silent
    data merge entity @s {Silent:1b}
    data merge entity @s {DeathLootTable:"t.hard:custom/swiming_piglin"}