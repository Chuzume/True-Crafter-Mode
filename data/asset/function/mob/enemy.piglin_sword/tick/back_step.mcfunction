#> asset:mob/enemy.piglin_sword/tick/back_step
#
# 回復時のバックステップ
#
# @within function asset:mob/enemy.piglin_sword/tick/

# 演出
    playsound minecraft:entity.piglin.jealous hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2

# 速度を設定して、後ろ向きに飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 0.7
    execute rotated ~180 ~ run function lib:motion/

# 上方向は固定値
    data modify entity @s Motion[1] set value 0.4d
