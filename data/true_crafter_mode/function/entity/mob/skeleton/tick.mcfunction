#> true_crafter_mode:entity/mob/skeleton/tick
#
# 
#
# @within function true_crafter_mode:tick

# スポーン時
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/skeleton/init/

# 敵対しているのであればメインの行動を行う
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/skeleton/moveset/

# 敵対してなかったら諸々のスコアリセット
    scoreboard players reset @s[predicate=!true_crafter_mode:in_hostile] TMCM.Mob.BackStep