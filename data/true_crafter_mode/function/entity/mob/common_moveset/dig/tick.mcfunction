#> true_crafter_mode:entity/mob/common_moveset/dig/tick
#
# ブロック壊す動きをする
#
# @within function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/tick_owner

# 足を止める
    effect give @s slowness 1 10 true

# サウンド
    execute if score @s TMCM.Action.Dig matches 20 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    execute if score @s TMCM.Action.Dig matches 25 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    execute if score @s TMCM.Action.Dig matches 30 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    execute if score @s TMCM.Action.Dig matches 35 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2

# 向き調整処理、ただしBrain持ちがやるとやかましいのでやらない
    execute unless entity @s[type=#true_crafter_mode:has_brain] run function true_crafter_mode:entity/mob/common_moveset/dig/facing