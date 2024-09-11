
# ポイズンボール射出
    scoreboard players add @s TrueCrafterMode.Tick 1
    execute if entity @s[scores={TrueCrafterMode.Tick=40}] run function t.hard:enemy/cave_spider/shoot
