
# 地形またはプレイヤーにヒット
# 爆発を起こす
    summon fireball ~ ~ ~ {Tags:["Explosion_Ball"],ExplosionPower:2,power:[0.0,-3.0,0.0]} 

# キル
    kill @e[type=fireball,tag=T.Hard_GhastBulletDisplay,sort=nearest,limit=1]
    kill @s