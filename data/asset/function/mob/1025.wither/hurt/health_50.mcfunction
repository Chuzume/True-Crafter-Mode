#> asset:mob/1025.wither/hurt/health_50
#
# 50%切ったら
#
# @within function 
#   asset:mob/1025.wither/hurt/check_health
#   asset:mob/1025.wither/hurt/test_50

# 演出
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1.5 0.5

# 無敵、NoAI化
    data modify entity @s NoAI set value true
    data modify entity @s Silent set value true
    data modify entity @s Invulnerable set value true

# Tick初期化
    scoreboard players set @s General.Mob.Tick 0

# フェイズ移行動作のタグを付与
    tag @s add 1025.Transition.Phase3

# リセット
    function asset:mob/1025.wither/tick/reset/

# フェイズ加算
    scoreboard players add @s 1025.Phase 1
