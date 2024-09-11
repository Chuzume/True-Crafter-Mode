# ステータス
    attribute @s[nbt=!{IsBaby:1b}] minecraft:generic.movement_speed base set 0.32
    attribute @s minecraft:generic.fall_damage_multiplier base set 0
    attribute @s minecraft:generic.step_height base set 1

# 帽子被る
    execute if entity @s[type=#t.hard:no_sun_undead,tag=!t.hardAlreadyInit] run function t.hard:enemy/common/undead_hat

# Init終了
    tag @s add t.hardAlreadyInit

execute unless score #t.hard_Gamerule t.hardGamerule4 matches 2 run execute as @s[tag=!t.hardAlreadyInit] run data merge entity @s {Fuse:9999,Attributes:[{Name:"generic.movement_speed",Base:0.3}]}
execute if score #t.hard_Gamerule t.hardGamerule4 matches 2 run execute as @s[tag=!t.hardAlreadyInit] run data merge entity @s {Attributes:[{Name:"generic.movement_speed",Base:0.3}]}
tag @s add t.hardAlreadyInit