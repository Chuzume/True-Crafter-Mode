
# ポイズンボール射出
    scoreboard players add @s t.hardMoveset1 1
    execute if entity @s[scores={t.hardMoveset1=40}] run function t.hard:enemy/cave_spider/shoot
