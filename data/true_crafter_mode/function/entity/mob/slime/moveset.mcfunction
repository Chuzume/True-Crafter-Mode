#> true_crafter_mode:entity/mob/slime/moveset
#
# 
#
# @within function true_crafter_mode:entity/mob/slime/tick

# 自身の敵対者にタグ付与
#    execute on target run tag @s add TMCM.Target

# ほっとくとデカくなる
    # スコア加算
        scoreboard players add @s TMCM.Tick 1
    # 一定時間後に大きくなる
        execute if score @s TMCM.Tick matches 100.. run function true_crafter_mode:entity/mob/slime/size_up/check

# ターゲットからタグを外す
#    tag @n[tag=TMCM.Target] remove TMCM.Target