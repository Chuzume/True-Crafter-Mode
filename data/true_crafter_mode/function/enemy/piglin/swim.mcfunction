# すいすい
    scoreboard players set @s Chuz.Speed 1
    summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["T.HardRotFix"],Duration:1}
    execute as @e[tag=T.HardRotFix,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes
    data modify entity @s Rotation[0] set from entity @e[tag=T.HardRotFix,limit=1,sort=nearest] Rotation[0]
    execute facing entity @p feet run function true_crafter_mode:move
    scoreboard players reset @s Chuz.Speed

# このタグ付与とルートテーブル書き換えがピグリン専用な理由
# 色々ややこしい理由があるのだ
    tag @s add T.HardPiglin_Silent
    data merge entity @s {Silent:1b}
    data merge entity @s {DeathLootTable:"true_crafter_mode:custom/swiming_piglin"}