#全ゲームルールスコアリセット
tellraw @a [{"text":"\n[True Crafter Mode]"},{"text":"\nゲームルールを初期化しました\nAll gamerule has been reset.\n"}]
scoreboard players set #t.hard_Gamerule T.Hard_Gamerule1 1
scoreboard players set #t.hard_Gamerule T.Hard_Gamerule2 1
scoreboard players set #t.hard_Gamerule T.Hard_Gamerule3 0
scoreboard players set #t.hard_Gamerule T.Hard_Gamerule4 1