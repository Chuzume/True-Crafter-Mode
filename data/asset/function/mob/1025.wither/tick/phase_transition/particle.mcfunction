#> asset:mob/1025.wither/tick/phase_transition/particle
#
# 
#
# @within function asset:mob/1025.wither/tick/phase_transition/

$execute at @e[type=wither_skeleton,distance=..64,scores={MobID=1027}] positioned ~ ~1.5 ~ run particle trail{color:[1.000,1.000,1.000],target:$(Pos),duration:20} ~ ~ ~ 0.1 0.1 0.1 1 5 force @a[distance=..64]
