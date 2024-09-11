
# 火の玉をなんか別のものに変換
    execute as @e[type=fireball,limit=1,distance=..6,sort=nearest,tag=!t.hardGhastBulletDisplay,tag=!t.hardAlreadyInit] at @s run function t.hard:enemy/ghast/shoot_fireball
