#初期設定では1
scoreboard players add #t.hard_Gamerule t.hardGamerule4 1
execute if score #t.hard_Gamerule t.hardGamerule4 matches 3 run scoreboard players set #t.hard_Gamerule t.hardGamerule4 0

execute if score #t.hard_Gamerule t.hardGamerule4 matches 0 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nクリーパーの爆発を 無限 にしました。\nCreeper explosion type is set to:Infinity\n"}]
execute if score #t.hard_Gamerule t.hardGamerule4 matches 1 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nクリーパーの爆発を 3回まで にしました。\nCreeper explosion type is set to:3times\n"}]
execute if score #t.hard_Gamerule t.hardGamerule4 matches 2 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nクリーパーの爆発を バニラ にしました。\nCreeper explosion type is set to:Vanilla\n"}]
