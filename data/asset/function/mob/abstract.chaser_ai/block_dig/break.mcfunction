#> asset:mob/abstract.chaser_ai/block_dig/break
#
# 
#
# @within function asset:mob/abstract.chaser_ai/block_dig/

# まず、スコアリセット
    scoreboard players reset @s abstract.chaser_ai.Dig

# 足元に誰か収まってるなら下に掘って、以下の処理をスキップ
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..48] positioned ~-8 ~-34 ~-8 if entity @p[tag=!PlayerShouldInvulnerable,dx=16,dy=32,dz=16] at @s positioned ~ ~-1 ~ unless block ~ ~ ~ #lib:no_dig run setblock ~ ~ ~ air destroy
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..48] positioned ~-8 ~-34 ~-8 if entity @p[tag=!PlayerShouldInvulnerable,dx=16,dy=32,dz=16] at @s run return fail

# 前のブロックを粉砕する
    execute anchored eyes positioned ^ ^ ^1 unless block ~ ~ ~ #lib:no_dig run setblock ~ ~ ~ air destroy
    execute anchored feet positioned ^ ^ ^1 unless block ~ ~ ~ #lib:no_dig run setblock ~ ~ ~ air destroy

# 足元１個上、つまり背が高い奴は胴体付近のも壊す
    execute anchored feet positioned ^ ^1 ^1 unless block ~ ~ ~ #lib:no_dig run setblock ~ ~ ~ air destroy

# 頭上にもあるなと感じたら上のも壊してしまおう
    execute rotated ~ 0 anchored eyes positioned ^ ^1 ^ unless block ~ ~ ~ #lib:no_dig run setblock ~ ~ ~ air destroy
