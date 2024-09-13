#> true_crafter_mode:personal_storage/score_id
#
# 
#
# @within function true_crafter_mode:personal_storage/tick

# 数値IDを割り振る
    scoreboard players add $PersonalStorage.Core PersonalStorage.Core 1
    scoreboard players operation @s PersonalStorage.ID = $PersonalStorage.Core PersonalStorage.Core