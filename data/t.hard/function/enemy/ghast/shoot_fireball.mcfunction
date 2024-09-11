
# 5つのホーミング火の玉を放つ
    summon armor_stand ~ ~ ~ {Tags:["t.hardGhastBullet","t.hardGhastBulletInit"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
    summon armor_stand ~ ~ ~ {Tags:["t.hardGhastBullet","t.hardGhastBulletInit","t.hardGhastBulletWay1"],Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
    summon armor_stand ~ ~ ~ {Tags:["t.hardGhastBullet","t.hardGhastBulletInit","t.hardGhastBulletWay2"],Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
    summon armor_stand ~ ~ ~ {Tags:["t.hardGhastBullet","t.hardGhastBulletInit","t.hardGhastBulletWay3"],Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
    summon armor_stand ~ ~ ~ {Tags:["t.hardGhastBullet","t.hardGhastBulletInit","t.hardGhastBulletWay4"],Marker:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}

# パーティクルと音
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
    particle minecraft:lava ~ ~ ~ 0 0 0 0 25 force
    
# 元の火の玉は削除
    tag @s add t.hardAlreadyInit