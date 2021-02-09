#スポーン時
execute if entity @s[tag=!T.Hard_Already] run function t.hard:enemy/skeleton/spawn
#周囲に敵がいるなら(通常スケ)
execute if entity @s[type=!wither_skeleton] if entity @a[tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/skeleton/attack
#周囲に敵がいるなら(ウィザスケ)
execute if entity @s[type=wither_skeleton] if entity @e[type=!#t.hard:w.skeleton_enemy,tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/skeleton/attack_w.ske