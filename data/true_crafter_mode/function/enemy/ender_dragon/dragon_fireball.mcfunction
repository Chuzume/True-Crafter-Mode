scoreboard players add @s BulletRemain 1
#飛ばす
execute facing entity @p eyes run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Tags:["pos"]}
scoreboard players set @s[scores={BulletRemain=1}] Chuz.Speed 3
execute if entity @s[scores={BulletRemain=1}] run function true_crafter_mode:move_fb_2
execute if entity @s[scores={BulletRemain=1..},tag=!T.HardNoHoming] run function true_crafter_mode:move_fb_2
kill @s[scores={BulletRemain=100}]
#パーティクル
particle flame ~ ~ ~ 0.1 0.1 0.1 0 1
#背後からホーミングはイヤじゃん
execute if entity @a[distance=..50] run tag @s add T.HardNoHoming
