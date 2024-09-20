#> true_crafter_mode:entity/mob/skeleton/moveset/elite/shoot
#
# 射撃時に実行
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/

# 最寄りの矢にタグ付与
    execute as @n[type=arrow,tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/skeleton/moveset/elite/boots_arrow
    tag @n[type=arrow,tag=!TMCM.AlreadyInit] add TMCM.AlreadyInit

# 演出
    #playsound minecraft:item.crossbow.shoot neutral @a ~ ~ ~ 1.5 1
    playsound minecraft:item.trident.throw neutral @a ~ ~ ~ 1.5 1.5

# メイン動作
    #data modify entity @s Motion[1] set value 0.2d