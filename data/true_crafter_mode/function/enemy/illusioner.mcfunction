
#段差飛び越え
execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!TrueCrafterMode.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim