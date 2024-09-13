#スポーン時
execute if entity @s[tag=!TrueCrafterMode.AlreadyInit] run function true_crafter_mode:enemy/pillager/spawn
#周囲に敵がいるなら
execute if entity @e[type=#true_crafter_mode:zombie_enemy,tag=!TrueCrafterMode.Exception,distance=..30] run function true_crafter_mode:enemy/pillager/attack