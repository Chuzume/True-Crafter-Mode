#> true_crafter_mode:entity/mob/piglin/moveset/drink_potion/end
#
# 飲み終わり
#
# @within function true_crafter_mode:entity/mob/piglin/moveset/drink_potion/tick

# オフハンドを消す
    item replace entity @s weapon.offhand with air

# リセット
    scoreboard players reset @s TMCM.SubAction 
    tag @s remove TMCM.Piglin.FireResist
