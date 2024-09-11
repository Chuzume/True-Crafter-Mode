<<<<<<< HEAD:data/t.hard/function/enemy/block/stone/tick.mcfunction
scoreboard players add @s TrueCrafterMode.Tick 1
execute at @s[scores={TrueCrafterMode.Tick=60..}] run setblock ~ ~ ~ air destroy
kill @s[scores={TrueCrafterMode.Tick=60..}]
=======
scoreboard players add @s T.HardMoveset1 1
execute at @s[scores={T.HardMoveset1=60..}] run setblock ~ ~ ~ air destroy
kill @s[scores={T.HardMoveset1=60..}]
>>>>>>> parent of 07c23e5 (全てをアップデート):data/t.hard/functions/enemy/block/stone/tick.mcfunction
#本体のブロックがなければ自壊、アイテム削除
execute unless block ~ ~ ~ mossy_cobblestone run kill @e[type=item,limit=1,sort=nearest,distance=..1]
execute unless block ~ ~ ~ mossy_cobblestone run kill @s