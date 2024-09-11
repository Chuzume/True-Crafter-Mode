#初期設定ではオン、1
scoreboard players add #t.hard_Gamerule t.hardGamerule2 1
execute if score #t.hard_Gamerule t.hardGamerule2 matches 2 run scoreboard players set #t.hard_Gamerule t.hardGamerule2 0

execute if score #t.hard_Gamerule t.hardGamerule2 matches 0 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブのブロック設置を 無効 にしました。\nMob iron doors destroy disabled.\n"}]
execute if score #t.hard_Gamerule t.hardGamerule2 matches 1 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブのブロック設置を 有効 にしました。\nMob iron doors destroy enabled.\n"}]