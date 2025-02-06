#> asset:mob/1025.wither/hurt/reset
#
# 
#
# @within function asset:mob/1025.wither/hurt/check_health

# 演出
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1.5 0.7

# Tick初期化
    scoreboard players set @s General.Mob.Tick -10

# フェイズ加算
    scoreboard players add @s 1025.Phase 1
