#> world_manager:event/difficulty/4
#
# 
#
# @within function world_manager:event/difficulty/3

# 難易度を変更
    scoreboard players set $Difficulty Global 4

# メッセージ
    tellraw @a [{"color":"dark_red","text":"火花が荒々しく宙を舞う…"}]
    tellraw @a [{"color":"white","translate":"現在の難易度は[焚き火の熱: "},{"color":"dark_red","text":"4"},{"color":"white","text":"]です"}]

# 閉じたときの共通処理
    function world_manager:event/difficulty/close
