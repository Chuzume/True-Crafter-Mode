#> asset:mob/0003.abstract_chaser_ai/block_dig/break
#
# 
#
# @within function asset:mob/0003.abstract_chaser_ai/block_dig/

# 前のブロックを粉砕する
    execute anchored eyes positioned ^ ^ ^1 unless block ~ ~ ~ #true_crafter_mode:no_dig run setblock ~ ~ ~ air destroy
    execute anchored feet positioned ^ ^ ^1 unless block ~ ~ ~ #true_crafter_mode:no_dig run setblock ~ ~ ~ air destroy

# 足元１個上、つまり背が高い奴は胴体付近のも壊す
    execute anchored feet positioned ^ ^1 ^1 unless block ~ ~ ~ #true_crafter_mode:no_dig run setblock ~ ~ ~ air destroy

# スコアリセット
    scoreboard players reset @s 3.Tick.Dig
