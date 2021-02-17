
#幅1ブロックの穴
execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #t.hard:no_collision unless block ^ ^-1 ^2 #t.hard:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run scoreboard players set @s[nbt={OnGround:1b}] ChuzSpeed 4
execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #t.hard:no_collision unless block ^ ^-1 ^2 #t.hard:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run tag @s[nbt={OnGround:1b}] add T.Hard_Gap_Jump

#幅2ブロックの穴
execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #t.hard:no_collision if block ^ ^-1 ^2 #t.hard:no_collision unless block ^ ^-1 ^3 #t.hard:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run scoreboard players set @s[nbt={OnGround:1b}] ChuzSpeed 6
execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #t.hard:no_collision if block ^ ^-1 ^2 #t.hard:no_collision unless block ^ ^-1 ^3 #t.hard:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run tag @s[nbt={OnGround:1b}] add T.Hard_Gap_Jump
#幅3ブロックの穴
execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #t.hard:no_collision if block ^ ^-1 ^2 #t.hard:no_collision if block ^ ^-1 ^1 #t.hard:no_collision if block ^ ^-1 ^3 #t.hard:no_collision unless block ^ ^-1 ^4 #t.hard:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run scoreboard players set @s[nbt={OnGround:1b}] ChuzSpeed 9
execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #t.hard:no_collision if block ^ ^-1 ^2 #t.hard:no_collision if block ^ ^-1 ^1 #t.hard:no_collision if block ^ ^-1 ^3 #t.hard:no_collision unless block ^ ^-1 ^4 #t.hard:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run tag @s[nbt={OnGround:1b}] add T.Hard_Gap_Jump
#飛び越え動作
execute if entity @s[tag=T.Hard_Gap_Jump,nbt={OnGround:1b}] run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
execute if entity @s[tag=T.Hard_Gap_Jump,nbt={OnGround:1b}] run function t.hard:move_xz
data modify entity @s[tag=T.Hard_Gap_Jump,nbt={OnGround:1b}] Motion[1] set value 0.4
#タグ削除
scoreboard players set @s ChuzSpeed 0
tag @s[tag=T.Hard_Gap_Jump] remove T.Hard_Gap_Jump