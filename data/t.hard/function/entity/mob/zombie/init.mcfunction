
# ステータス
    attribute @s[nbt=!{IsBaby:1b}] minecraft:generic.movement_speed base set 0.32
    attribute @s minecraft:generic.fall_damage_multiplier base set 0
    attribute @s minecraft:generic.step_height base set 1

# 帽子被る
    execute if entity @s[type=#t.hard:no_sun_undead,tag=!t.hardAlreadyInit] run function t.hard:enemy/common/undead_hat

# Init終了
    tag @s add t.hardAlreadyInit