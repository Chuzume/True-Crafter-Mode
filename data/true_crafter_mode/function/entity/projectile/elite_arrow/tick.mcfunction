#> true_crafter_mode:entity/projectile/elite_arrow/tick
#
# 重力無視して飛ぶ変な矢
#
# @within function true_crafter_mode:tick

# パーティクル
    execute at @s run particle dust{color:[1.0,0.3,0.3],scale:0.5} ~ ~ ~ 0.1 0.1 0.1 1 10

# スコア加算
    scoreboard players add @s TMCM.Tick 1

# 消える
    kill @s[scores={TMCM.Tick=200..}]
