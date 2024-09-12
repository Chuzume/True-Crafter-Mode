
# スコア加算
    execute if entity @p[distance=..32,tag=!TrueCrafterMode.Exception] run scoreboard players add @s TrueCrafterMode.Tick 1

# ネット発射
    # 近距離
        execute if entity @s[scores={TrueCrafterMode.Tick=40..}] if entity @p[distance=..7] run function true_crafter_mode:entity/mob/spider/spread
    # 遠距離
        execute if entity @s[scores={TrueCrafterMode.Tick=40..}] if entity @p[distance=7..] run function true_crafter_mode:entity/mob/spider/shoot