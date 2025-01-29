#> asset:mob/1001.zombie/in_hostile/leap
#
# 
#
# @within function asset:mob/1001.zombie/in_hostile/

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1 0.5
    
# 横方向
    scoreboard players set $Temporary Chuz.Speed 10
    execute at @s run function true_crafter_mode:entity/motion_xz

# 上方向
    data modify entity @s Motion[1] set value 0.4

# タグ付与
    tag @s add TMCM.Leaping

# 攻撃のノックバック増加
    attribute @s minecraft:attack_knockback base set 1.5

# リセット
    scoreboard players reset @s Chuz.Speed
