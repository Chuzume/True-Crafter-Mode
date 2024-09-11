scoreboard players add @s t.hardMoveset1 1
execute at @s[scores={t.hardMoveset1=60..}] run setblock ~ ~ ~ air destroy
kill @s[scores={t.hardMoveset1=60..}]
#本体のブロックがなければ自壊、アイテム削除
execute unless block ~ ~ ~ mossy_cobblestone run kill @e[type=item,limit=1,sort=nearest,distance=..1]
execute unless block ~ ~ ~ mossy_cobblestone run kill @s