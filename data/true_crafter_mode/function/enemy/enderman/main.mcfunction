#スポーン時
execute if entity @s[tag=!T.HardAlreadyInit] run function true_crafter_mode:enemy/enderman/spawn
#周囲に敵がいるなら
execute if entity @a[tag=!T.HardException,distance=..30] run function true_crafter_mode:enemy/enderman/attack