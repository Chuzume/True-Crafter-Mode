
# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.skeleton.death hostile @a ~ ~ ~ 1 2
    
# 勢いを設定
    scoreboard players set @s Chuz.Speed 7

# 自分を後ろ向きに飛ばす
    execute rotated ~180 ~ run function true_crafter_mode:entity/motion_xz

# 上方向は固定値
    data modify entity @s Motion[1] set value 0.4d

# リセット
    scoreboard players reset @s TMCM.Mob.BackStep
