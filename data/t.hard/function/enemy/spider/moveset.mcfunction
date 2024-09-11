# 近距離ではネットばらまき
    execute if entity @p[distance=..7,tag=!t.hardException] run scoreboard players add @s t.hardMoveset1 1
    execute if entity @s[scores={t.hardMoveset1=40}] run function t.hard:enemy/spider/spread

# 遠距離では正確に
    execute if entity @p[distance=7..,tag=!t.hardException] run scoreboard players add @s t.hardMoveset2 1
    execute if entity @s[scores={t.hardMoveset2=40}] run function t.hard:enemy/spider/shoot