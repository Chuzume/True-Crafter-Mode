
#近づかれたらできるだけ距離を取ろうとする
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T.Hard_Exception] run scoreboard players set @s Motion_Speed 3
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T.Hard_Exception] rotated ~ 0 if block ^ ^ ^-1 #t.hard:no_collision_safe run function t.hard:enemy/common/ranged_move
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T.Hard_Exception] rotated ~ 0 unless block ^ ^ ^-1 #t.hard:no_collision_safe run function t.hard:enemy/common/dash

#段差飛び越え
function t.hard:enemy/common/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 1 run function t.hard:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T.Hard_Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim