#> true_crafter_mode:entity/mob/skeleton/moveset/elite/boots_arrow
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/shoot

# 矢のMotionを1.5倍に
    execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] 15000
    execute store result entity @s Motion[1] double 0.0001 run data get entity @s Motion[1] 15000
    execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] 15000

# 矢のデータを変更
    data modify entity @s NoGravity set value true
    data modify entity @s crit set value true

# タグ付与
    tag @s add TMCM.AlreadyInit