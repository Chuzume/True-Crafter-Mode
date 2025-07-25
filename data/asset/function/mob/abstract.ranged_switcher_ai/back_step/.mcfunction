#> asset:mob/abstract.ranged_switcher_ai/back_step/
#
# 汎用バクステ
#
# @within asset:mob/alias/abstract.ranged_switcher_ai.back_step

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    
# 少し待つ
    effect give @s slowness 1 10 true

# 速度を設定して、後ろ向きに飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 0.7
    execute rotated ~180 ~ run function lib:motion/

# 上方向は固定値
    data modify entity @s Motion[1] set value 0.4d

# リセット
    scoreboard players reset @s abstract.ranged_switcher_ai.BackStep
