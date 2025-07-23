#> asset:mob/enemy.wither/hurt/health_50
#
# 50%切ったら
#
# @within function 
#   asset:mob/enemy.wither/hurt/check_health
#   asset:mob/enemy.wither/hurt/test_50

# 演出
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1.5 0.5

# 無敵、NoAI化
    data modify entity @s NoAI set value true
    data modify entity @s Silent set value true
    data modify entity @s Invulnerable set value true

# Tick初期化
    scoreboard players set @s General.Mob.Tick 0

# フェイズ移行動作のタグを付与
    tag @s add enemy.wither.Transition.Phase3

# リセット
    function asset:mob/enemy.wither/tick/reset/

# フェイズ加算
    scoreboard players add @s enemy.wither.Phase 1
