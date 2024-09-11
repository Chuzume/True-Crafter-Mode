
# スポーン時
    execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:enemy/skeleton/init

# 周囲に敵がいるなら(通常スケ)
    execute if entity @s[predicate=t.hard:battle_mode] run function t.hard:enemy/skeleton/attack

# 周囲に敵がいるなら(ウィザスケ)
    execute if entity @s[type=wither_skeleton] if entity @e[type=!#t.hard:w.skeleton_enemy,tag=!t.hardException,distance=..30] run function t.hard:enemy/skeleton/attack_w.ske