#> true_crafter_mode:entity/mob/skeleton/moveset/subspecies/wither_skeleton/leap
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/subspecies/wither_skeleton/shoot

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.wither_skeleton.death hostile @a ~ ~ ~ 1 2
    
# 勢いを設定
    scoreboard players set $Temporary Chuz.Speed 14

# 自分を後ろ向きに飛ばす
    function true_crafter_mode:entity/motion_xz

# 上方向は固定値
    data modify entity @s Motion[1] set value 0.4d
