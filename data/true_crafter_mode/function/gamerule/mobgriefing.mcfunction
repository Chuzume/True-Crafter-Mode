#初期設定ではオン、1
scoreboard players add #t.hard_Gamerule TMCM.Gamerule.BlockDestroy 1
execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 2 run scoreboard players set #t.hard_Gamerule TMCM.Gamerule.BlockDestroy 0

execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 0 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブのブロック破壊を 無効 にしました。\nMob block destroy disabled.\n"}]
execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブのブロック破壊を 有効 にしました。\nMob block destroy enabled.\n"}]