#> asset:mob/enemy.zombie/in_hostile/leap
#
# 
#
# @within function asset:mob/enemy.zombie/in_hostile/main_attack

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1 0.5
    
# 速度を設定して飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 1
    function lib:motion/

# 上方向
    data modify entity @s Motion[1] set value 0.4

# タグ付与
    tag @s add TMCM.Leaping

# 攻撃のノックバック増加
    attribute @s minecraft:attack_knockback base set 1.5
