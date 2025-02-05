#> asset:mob/1023.zombie_brute/in_hostile/leap
#
# 
#
# @within function asset:mob/1023.zombie_brute/in_hostile/

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 1.5 0.7
    
# 速度を設定して飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 1
    function lib:motion/

# 上方向
    data modify entity @s Motion[1] set value 0.7d

# タグ付与
    tag @s add TMCM.Leaping
