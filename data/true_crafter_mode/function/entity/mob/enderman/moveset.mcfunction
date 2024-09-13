#> true_crafter_mode:entity/mob/enderman/moveset
#
# 敵対時の動作
#
# @within function true_crafter_mode:entity/mob/enderman/tick

# 近に対象がいる場合はTick加算
    execute if entity @p[distance=..5] run scoreboard players add @s TrueCrafterMode.Tick 1

# ただしオプションで封じられている場合はスコアを常時リセットする
    execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 0 run scoreboard players reset @s TrueCrafterMode.Tick

# 一定の値でブロックを破壊
    execute if entity @s[scores={TrueCrafterMode.Tick=30..}] facing entity @p eyes rotated ~ 0 run function true_crafter_mode:entity/mob/enderman/dig