#> true_crafter_mode:entity/mob/skeleton/moveset/subspecies/stray/jump
#
# 謎ジャンプ
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/subspecies/stray/

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    
# 勢いを設定
    scoreboard players set @s Chuz.Speed 5

# 前方向にも飛ぶ
    function true_crafter_mode:entity/motion_xz

# 上方向は固定値
    data modify entity @s Motion[1] set value 0.8d

# リセット
    scoreboard players reset @s TMCM.Tick