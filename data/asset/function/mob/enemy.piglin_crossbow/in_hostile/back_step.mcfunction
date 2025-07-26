#> asset:mob/enemy.piglin_crossbow/in_hostile/back_step
#
# 
#
# @within function asset:mob/enemy.piglin_crossbow/in_hostile/

# サウンド
    playsound entity.piglin.jealous hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    
# 少し待つ
    effect give @s slowness 1 10 true

# 速度を設定して、後ろ向きに飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 1.0
    execute rotated ~180 ~ run function lib:motion/

# 上方向は固定値
    data modify entity @s Motion[1] set value 0.2d

# リセット
    scoreboard players reset @s General.Mob.Tick
