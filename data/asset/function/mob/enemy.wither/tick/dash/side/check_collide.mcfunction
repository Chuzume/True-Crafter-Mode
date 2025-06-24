#> asset:mob/enemy.wither/tick/dash/side/check_collide
#
# 
#
# @within function asset:mob/enemy.wither/tick/dash/side/move

execute unless block ^ ^ ^1 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^1 #lib:no_collision run return 1
