#> true_crafter_mode:entity/projectile/elite_arrow/init
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/skeleton/shoot

# 対象の頭を狙う
    summon marker ~ ~ ~ {Tags:["Marker.Facing"]}
    execute as @n[type=marker,tag=Marker.Facing] at @s anchored eyes facing entity @n[tag=TMCM.Target] eyes run tp @s ~ ~ ~ ~ ~

# 無理やり狙った方向に飛ぶ
    scoreboard players set @s Chuz.Speed 15
    execute rotated as @n[type=marker,tag=Marker.Facing] run function true_crafter_mode:entity/motion

# 矢のデータを変更
    data modify entity @s NoGravity set value true
    data modify entity @s crit set value true

# タグ付与
    tag @s add TMCM.Projectile.EliteArrow

# 終了
    kill @n[type=marker,tag=Marker.Facing]
    tag @s add TMCM.AlreadyInit
