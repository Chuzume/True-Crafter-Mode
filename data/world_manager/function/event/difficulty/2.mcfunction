#> world_manager:event/difficulty/2
#
# 
#
# @within function world_manager:event/difficulty/1

# 難易度を変更
    scoreboard players set $Difficulty Global 2

# メッセージ
    tellraw @a [{"color":"yellow","text":"薪がぱちりと弾けた…"}]
    tellraw @a [{"color":"white","translate":"現在の難易度は[火の熱: "},{"color":"yellow","text":"2"},{"color":"white","text":"]です"}]

# 閉じたときの共通処理
    function world_manager:event/difficulty/close
