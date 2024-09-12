#スポーン時
execute if entity @s[tag=!T.HardAlreadyInit] run function true_crafter_mode:enemy/vindicator/vindicator_change

#周囲に敵がいるなら
execute if entity @e[type=#true_crafter_mode:zombie_enemy,tag=!TrueCrafterMode.Exception,distance=..30] run function true_crafter_mode:enemy/vindicator/attack
