#> asset:mob/1025.wither/hurt/health_75
#
# 75%切ったら
#
# @within function asset:mob/1025.wither/hurt/check_health

# 演出
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1.5 0.7

# Tick初期化
    scoreboard players set @s General.Mob.Tick -20

# リセット
    function asset:mob/1025.wither/tick/reset/

# フェイズ加算
    scoreboard players add @s 1025.Phase 1
