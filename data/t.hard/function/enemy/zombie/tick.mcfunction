# スポーン時
<<<<<<<< HEAD:data/t.hard/functions/entity/mob/zombie/tick.mcfunction
    execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:entity/mob/zombie/init
========
    execute if entity @s[tag=!T.HardAlreadyInit] run function t.hard:enemy/zombie/init
>>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/zombie/tick.mcfunction

# 敵対状態なら
    execute if entity @s[predicate=t.hard:battle_mode] run function t.hard:entity/mob/zombie/moveset

# 自身がゾンビピグリンなら常時敵対
    data modify entity @s[type=zombified_piglin] AngryAt set from entity @p[tag=!T.HardException] UUID

<<<<<<<< HEAD:data/t.hard/functions/entity/mob/zombie/tick.mcfunction
# 誰とも敵対していない場合、スコアリセット
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s TrueCrafterMode.Tick
========
# スコアリセット
    execute unless entity @s[predicate=t.hard:battle_mode] run scoreboard players reset @s T.HardMoveset1
>>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/zombie/tick.mcfunction
