#> true_crafter_mode:entity/mob/zombie/leap_attack/
#
# こっちに飛びかかってくる処理
#
# @within function true_crafter_mode:entity/mob/zombie/moveset

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1 0.5
    
# 横方向
    scoreboard players set @s Chuz.Speed 10
    execute at @s run function true_crafter_mode:entity/motion_xz

# 上方向
    data modify entity @s Motion[1] set value 0.4

# タグ付与
    tag @s add TMCM.Leaping

# 攻撃のノックバック増加
    attribute @s minecraft:generic.attack_knockback base set 3

# リセット
    scoreboard players reset @s Chuz.Speed
