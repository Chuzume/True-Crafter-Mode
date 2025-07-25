#> world_manager:event/difficulty/5
#
# 
#
# @within function world_manager:event/difficulty/4

# 難易度を変更
    scoreboard players set $Difficulty Global 5

# メッセージ
    tellraw @a [{"color":"dark_purple","text":"火勢は留まることを知らない…！"}]
    tellraw @a [{"color":"white","translate":"現在の難易度は[焚き火の熱: "},{"color":"dark_purple","text":"5"},{"color":"white","text":"]です"}]

# 閉じたときの共通処理
    function world_manager:event/difficulty/close
