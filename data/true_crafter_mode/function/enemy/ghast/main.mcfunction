
# 火の玉をなんか別のものに変換
    execute as @e[type=fireball,limit=1,distance=..6,sort=nearest,tag=!T.HardGhastBulletDisplay,tag=!T.HardAlreadyInit] at @s run function true_crafter_mode:enemy/ghast/shoot_fireball 
