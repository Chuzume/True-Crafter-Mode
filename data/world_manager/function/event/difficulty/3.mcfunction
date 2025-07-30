#> world_manager:event/difficulty/3
#
# 
#
# @within function world_manager:event/difficulty/2

# 難易度を変更
    scoreboard players set $Difficulty Global 3

# メッセージ
    tellraw @a [{"color":"red","text":"炎が勢いを増していく…"}]
    tellraw @a [{"color":"white","translate":"現在の難易度は[火の熱: "},{"color":"red","text":"3"},{"color":"white","text":"]です"}]

# 閉じたときの共通処理
    function world_manager:event/difficulty/close
