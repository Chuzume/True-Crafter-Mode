#> asset:mob/0004.ranged_switcher_ai/back_step/
#
# 汎用バクステ
#
# @within asset:mob/alias/4/back_step

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    
# 勢いを設定
    scoreboard players set @s Chuz.Speed 7

# 自分を後ろ向きに飛ばす
    execute rotated ~180 ~ run function true_crafter_mode:entity/motion_xz

# 上方向は固定値
    data modify entity @s Motion[1] set value 0.4d

# リセット
    scoreboard players reset @s 1006.BackStep

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
