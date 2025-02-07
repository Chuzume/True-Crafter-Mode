#> asset:mob/1025.wither/tick/phase_transition/minion_cleared
#
# 下っ端の排除に成功
#
# @within function asset:mob/1025.wither/tick/phase_transition/

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 1.6
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 2 0.8

# スコアを調整
    scoreboard players set @s General.Mob.Tick 840
