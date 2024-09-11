
# スポーン時
    execute if entity @s[tag=!T.HardAlreadyInit] run function true_crafter_mode:enemy/skeleton/init

# 周囲に敵がいるなら(通常スケ)
    execute if entity @s[predicate=true_crafter_mode:battle_mode] run function true_crafter_mode:enemy/skeleton/attack

# 周囲に敵がいるなら(ウィザスケ)
    execute if entity @s[type=wither_skeleton] if entity @e[type=!#true_crafter_mode:w.skeleton_enemy,tag=!T.HardException,distance=..30] run function true_crafter_mode:enemy/skeleton/attack_w.ske