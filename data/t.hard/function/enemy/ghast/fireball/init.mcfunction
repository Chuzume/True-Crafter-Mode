
# こっち向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
    tag @s remove t.hardGhastBulletInit

# 各GhastBulletWayタグに基づいて向きに補正
    execute at @s if entity @s[tag=t.hardGhastBulletWay1] run tp @s ~ ~ ~ ~ ~25
    tag @s remove t.hardGhastBulletWay1
    execute at @s if entity @s[tag=t.hardGhastBulletWay2] run tp @s ~ ~ ~ ~ ~-25
    tag @s remove t.hardGhastBulletWay2
    execute at @s if entity @s[tag=t.hardGhastBulletWay3] run tp @s ~ ~ ~ ~25 ~
    tag @s remove t.hardGhastBulletWay3
    execute at @s if entity @s[tag=t.hardGhastBulletWay4] run tp @s ~ ~ ~ ~-25 ~