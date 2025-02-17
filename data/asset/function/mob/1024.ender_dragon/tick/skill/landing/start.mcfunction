#> asset:mob/1024.ender_dragon/tick/skill/landing/start
#
# 着地開始
#
# @within function asset:mob/1024.ender_dragon/tick/skill/landing/

# DragonPhase変更
    data modify entity @s DragonPhase set value 3

# ちょっとずるい気もするけど着地まで無敵になる
    data modify entity @s Invulnerable set value true

# Tick固定
    tag @s add 1024.TickLock

# この行動をループしないようにスコアを1だけ増やす
    scoreboard players add @s General.Mob.Tick 1
