
# 敵が設置してくる、勝手に壊れるブロック
    scoreboard players add @s t.hardMoveset1 1
    execute at @s[scores={t.hardMoveset1=60..}] run setblock ~ ~ ~ air destroy

#本体のブロックがなければ自壊、アイテム削除
    execute if block ~ ~ ~ air run kill @n[type=item,distance=..1]
    execute if block ~ ~ ~ air run kill @s