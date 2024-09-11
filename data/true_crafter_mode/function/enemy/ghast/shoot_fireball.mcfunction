
# 5つのホーミング火の玉を放つ
    summon armor_stand ~ ~ ~ {Tags:["T.HardGhastBullet","T.HardGhastBulletInit"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
    summon armor_stand ~ ~ ~ {Tags:["T.HardGhastBullet","T.HardGhastBulletInit","T.HardGhastBulletWay1"],Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
    summon armor_stand ~ ~ ~ {Tags:["T.HardGhastBullet","T.HardGhastBulletInit","T.HardGhastBulletWay2"],Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
    summon armor_stand ~ ~ ~ {Tags:["T.HardGhastBullet","T.HardGhastBulletInit","T.HardGhastBulletWay3"],Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
    summon armor_stand ~ ~ ~ {Tags:["T.HardGhastBullet","T.HardGhastBulletInit","T.HardGhastBulletWay4"],Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}

# パーティクルと音
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
    particle minecraft:lava ~ ~ ~ 0 0 0 0 25 force
    
# 元の火の玉は削除
    tag @s add T.HardAlreadyInit