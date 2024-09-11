# スポーン時
    execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:entity/mob/zombie/init

# 敵対状態なら
    execute if entity @s[predicate=t.hard:battle_mode] run function t.hard:entity/mob/zombie/moveset

# 自身がゾンビピグリンなら常時敵対
    data modify entity @s[type=zombified_piglin] AngryAt set from entity @p[tag=!T.HardException] UUID

# 誰とも敵対していない場合、スコアリセット
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s TrueCrafterMode.Tick
    