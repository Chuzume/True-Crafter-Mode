
# 5つのホーミング火の玉を放つ
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["T.Hard_GhastBullet","T.Hard_GhastBulletInit"],Passengers:[{id:"minecraft:fireball",Tags:["T.Hard_GhastBulletDisplay"],direction:[0.0,0.0,0.0]}]}
    summon armor_stand ~ ~ ~ {Tags:["T.Hard_GhastBullet","T.Hard_GhastBulletInit","T.Hard_GhastBulletWay1"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:fireball",Tags:["T.Hard_GhastBulletDisplay"],direction:[0.0,0.0,0.0]}]}
    summon armor_stand ~ ~ ~ {Tags:["T.Hard_GhastBullet","T.Hard_GhastBulletInit","T.Hard_GhastBulletWay2"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:fireball",Tags:["T.Hard_GhastBulletDisplay"],direction:[0.0,0.0,0.0]}]}
    summon armor_stand ~ ~ ~ {Tags:["T.Hard_GhastBullet","T.Hard_GhastBulletInit","T.Hard_GhastBulletWay3"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:fireball",Tags:["T.Hard_GhastBulletDisplay"],direction:[0.0,0.0,0.0]}]}
    summon armor_stand ~ ~ ~ {Tags:["T.Hard_GhastBullet","T.Hard_GhastBulletInit","T.Hard_GhastBulletWay4"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:fireball",Tags:["T.Hard_GhastBulletDisplay"],direction:[0.0,0.0,0.0]}]}

# パーティクルと音
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
    particle minecraft:lava ~ ~ ~ 0 0 0 0 25 force
    
# 元の火の玉は削除
    kill @s