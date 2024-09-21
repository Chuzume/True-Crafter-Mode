#> true_crafter_mode:entity/mob/piglin/moveset/dig
#
# 壁破壊処理
#
# @within function true_crafter_mode:entity/mob/piglin/moveset/

# プレイヤーが近くにいて、その方向にブロックがある状態が長く続いた場合、ブロック破壊モードに移行する
    execute unless score @s TMCM.Action.Dig matches 20.. if entity @p[distance=..16] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_dig run scoreboard players add @s TMCM.Action.Dig 1 

# 採掘カウント20tickでカウントが減らなくなって壊してくる
    execute if score @s TMCM.Action.Dig matches 20.. run scoreboard players add @s TMCM.Action.Dig 1
    execute if score @s TMCM.Action.Dig matches 20.. run function true_crafter_mode:entity/mob/common_moveset/dig/tick

# プレイヤーの方をめがけてブロック破壊実行
    execute if score @s[type=!creeper] TMCM.Action.Dig matches 40.. facing entity @p eyes rotated ~ 0 run function true_crafter_mode:entity/mob/common_moveset/dig/