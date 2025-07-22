#> asset:mob/abstract.ranged_switcher_ai/back_step/
#
# 汎用バクステ
#
# @within asset:mob/alias/abstract.ranged_switcher_ai.back_step

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    
# 勢いを設定
    scoreboard players set $Temporary Chuz.Speed 7

# 少し待つ
    effect give @s slowness 1 10 true

# 自分を後ろ向きに飛ばす
    execute rotated ~180 ~ run function true_crafter_mode:entity/motion_xz

# 上方向は固定値
    data modify entity @s Motion[1] set value 0.abstract.ranged_switcher_ai.

# リセット
    scoreboard players reset @s abstract.ranged_switcher_ai.BackStep
