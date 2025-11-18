#> asset:mob/enemy.wither/tick/out_off_combat/tick
#
# 
#
# @within function asset:mob/enemy.wither/tick/

# スコア加算
    scoreboard players add @s enemy.wither.OutOfCombat 1

# 敵がいない状態が一定値以上続いてかつ、頭がブロックに埋まっているなら、付近のプレイヤーを追いかけてくる
    execute if score @s enemy.wither.OutOfCombat matches 100.. anchored eyes unless block ^ ^ ^ #lib:no_collision run function asset:mob/enemy.wither/tick/out_off_combat/move

# 一定値以上で消える
    execute if score @s enemy.wither.OutOfCombat matches 300.. run function asset:mob/enemy.wither/tick/out_off_combat/vanish
