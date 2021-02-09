
# こっち向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
    tag @s remove T.Hard_GhastBulletInit

# 各GhastBulletWayタグに基づいて向きに補正
    execute at @s if entity @s[tag=T.Hard_GhastBulletWay1] run tp @s ~ ~ ~ ~ ~25
    tag @s remove T.Hard_GhastBulletWay1
    execute at @s if entity @s[tag=T.Hard_GhastBulletWay2] run tp @s ~ ~ ~ ~ ~-25
    tag @s remove T.Hard_GhastBulletWay2
    execute at @s if entity @s[tag=T.Hard_GhastBulletWay3] run tp @s ~ ~ ~ ~25 ~
    tag @s remove T.Hard_GhastBulletWay3
    execute at @s if entity @s[tag=T.Hard_GhastBulletWay4] run tp @s ~ ~ ~ ~-25 ~