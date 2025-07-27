#> asset:mob/enemy.ender_dragon/tick/to_phase_2
#
# 無敵解除、第２形態へ
#
# @within function asset:mob/enemy.ender_dragon/tick/

# スコアセット
    scoreboard players set @s enemy.ender_dragon.Phase 2
    
# 無敵解除
    data modify entity @s Invulnerable set value false
