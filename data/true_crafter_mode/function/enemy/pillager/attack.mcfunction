
#近づかれたらできるだけ距離を取ろうとする
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!TMCM.Exception] run scoreboard players set @s Chuz.Speed 3
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!TMCM.Exception] rotated ~ 0 if block ^ ^ ^-1 #true_crafter_mode:no_collision_safe run function true_crafter_mode:enemy/common/ranged_move
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!TMCM.Exception] rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision_safe run function true_crafter_mode:enemy/common/dash

#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim