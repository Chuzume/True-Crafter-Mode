#全ゲームルールスコアリセット
tellraw @a [{"text":"\n[True Crafter Mode]"},{"text":"\nゲームルールを初期化しました\nAll gamerule has been reset.\n"}]
scoreboard players set #t.hard_Gamerule T.HardGamerule1 1
scoreboard players set #t.hard_Gamerule T.HardGamerule2 1
scoreboard players set #t.hard_Gamerule T.HardGamerule3 0
scoreboard players set #t.hard_Gamerule T.HardGamerule4 1