#> world_manager:event/difficulty/
#
# 難易度設定周り
#
# @within function world_manager:event/tick

# -1は閉じたとき。特に難易度を変えず、ゲームルールとかが元に戻る
    execute if score @p Trigger.Difficulty matches -1 run function world_manager:event/difficulty/close
# 0
    execute if score @p Trigger.Difficulty matches 1 run function world_manager:event/difficulty/1
# 1
    execute if score @p Trigger.Difficulty matches 2 run function world_manager:event/difficulty/2
# 2
    execute if score @p Trigger.Difficulty matches 3 run function world_manager:event/difficulty/3
# 3
    execute if score @p Trigger.Difficulty matches 4 run function world_manager:event/difficulty/4
# 4
    execute if score @p Trigger.Difficulty matches 5 run function world_manager:event/difficulty/5
