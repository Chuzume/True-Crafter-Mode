scoreboard players add @s BulletRemain 1
#飛ばす
execute facing entity @p eyes run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Tags:["pos"]}
scoreboard players set @s[scores={BulletRemain=1}] Motion_Speed 3
execute if entity @s[scores={BulletRemain=1}] run function t.hard:move_fb_2
execute if entity @s[scores={BulletRemain=1..},tag=!T.Hard_NoHoming] run function t.hard:move_fb_2
kill @s[scores={BulletRemain=100}]
#パーティクル
particle flame ~ ~ ~ 0.1 0.1 0.1 0 1
#背後からホーミングはイヤじゃん
execute if entity @a[distance=..50] run tag @s add T.Hard_NoHoming
