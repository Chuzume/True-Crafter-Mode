# 敵が設置してくる、勝手に壊れるブロック

# Tick加算
    scoreboard players add @s TMCM.Tick 1
    execute as @s[scores={TMCM.Tick=60..}] run setblock ~ ~ ~ air destroy
    
#本体のブロックがなければ自壊、アイテム削除
    execute if block ~ ~ ~ air run kill @n[type=item,distance=..1]
    execute if block ~ ~ ~ air run kill @s
    