#全ゲームルールスコアリセット
tellraw @a [{"text":"\n[True Crafter Mode]"},{"text":"\nゲームルールを初期化しました\nAll gamerule has been reset.\n"}]
scoreboard players set #t.hard_Gamerule t.hardGamerule1 1
scoreboard players set #t.hard_Gamerule t.hardGamerule2 1
scoreboard players set #t.hard_Gamerule t.hardGamerule3 0
scoreboard players set #t.hard_Gamerule t.hardGamerule4 1