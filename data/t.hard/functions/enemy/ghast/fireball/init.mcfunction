
# こっち向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
    tag @s remove T.HardGhastBulletInit

# 各GhastBulletWayタグに基づいて向きに補正
    execute at @s if entity @s[tag=T.HardGhastBulletWay1] run tp @s ~ ~ ~ ~ ~25
    tag @s remove T.HardGhastBulletWay1
    execute at @s if entity @s[tag=T.HardGhastBulletWay2] run tp @s ~ ~ ~ ~ ~-25
    tag @s remove T.HardGhastBulletWay2
    execute at @s if entity @s[tag=T.HardGhastBulletWay3] run tp @s ~ ~ ~ ~25 ~
    tag @s remove T.HardGhastBulletWay3
    execute at @s if entity @s[tag=T.HardGhastBulletWay4] run tp @s ~ ~ ~ ~-25 ~