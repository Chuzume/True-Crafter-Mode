
# ポイズンボール射出
    execute if entity @p[distance=5..15] run scoreboard players add @s TMCM.Tick 1
    execute if entity @s[scores={TMCM.Tick=40}] run function true_crafter_mode:entity/mob/cave_spider/shoot

# スコア減少
    execute unless entity @p[distance=5..15] unless score @s TMCM.Tick matches ..0 run scoreboard players remove @s TMCM.Tick 1
    scoreboard players reset @s[scores={TMCM.Tick=..0}] TMCM.Tick