#> world_manager:event/difficulty/1
#
# 
#
# @within function world_manager:event/difficulty/

# 難易度を変更
    scoreboard players set $Difficulty Global 1

# メッセージ
    tellraw @a [{"color":"green","text":"炎は静かに揺らめいている…"}]
    tellraw @a [{"color":"white","translate":"現在の難易度は[焚き火の熱: "},{"color":"green","text":"1"},{"color":"white","text":"]です"}]

# 閉じたときの共通処理
    function world_manager:event/difficulty/close
