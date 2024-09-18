#> true_crafter_mode:entity/mob/slime/size_up/check
#
# 巨大化前に周囲のスライムの数を数えておく
#
# @within function true_crafter_mode:entity/mob/slime/moveset

# 周囲のスライムの数を数えて、限界以上だったら膨張はやめる
    execute store result score @s TMCM.Slime.Count run execute if entity @e[type=slime,distance=..16]
    execute if score @s TMCM.Slime.Count matches 10.. run scoreboard players reset @s TMCM.Tick
    execute if score @s TMCM.Slime.Count matches 10.. run return fail

# 自分がデカすぎたらやめる
    execute if entity @s[nbt={Size:4}] run return fail

# 大丈夫だったらデカくなる
    function true_crafter_mode:entity/mob/slime/size_up/