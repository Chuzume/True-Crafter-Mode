
# スコア加算
    execute if entity @p[distance=..32,tag=!TMCM.Exception] run scoreboard players add @s TMCM.Tick 1

# ネット発射
    # 近距離
        execute if entity @s[scores={TMCM.Tick=40..}] if entity @p[distance=..7] run function true_crafter_mode:entity/mob/spider/spread
    # 遠距離
        execute if entity @s[scores={TMCM.Tick=40..}] if entity @p[distance=7..] run function true_crafter_mode:entity/mob/spider/shoot