
#近づかれたらできるだけ距離を取ろうとする
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T.HardException] run scoreboard players set @s Chuz_Speed 3
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T.HardException] rotated ~ 0 if block ^ ^ ^-1 #t.hard:no_collision_safe run function t.hard:enemy/common/ranged_move
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T.HardException] rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision_safe run function t.hard:enemy/common/dash

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.HardGamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T.HardException] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim