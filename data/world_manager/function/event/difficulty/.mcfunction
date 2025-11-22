#> world_manager:event/difficulty/
#
# 難易度設定周り
#
# @within function world_manager:event/tick

# -1は閉じたとき。特に難易度を変えず、ゲームルールとかが元に戻る
    execute if entity @p[scores={Trigger.Difficulty=-1}] run function world_manager:event/difficulty/close
# 難易度が1~4に設定された場合、ベッドの時間スキップを有効化する
    execute if entity @p[scores={Trigger.Difficulty=1..4}] run function world_manager:event/difficulty/enable_time_skip/
# 1
    execute if entity @p[scores={Trigger.Difficulty=1}] run function world_manager:event/difficulty/1
# 2
    execute if entity @p[scores={Trigger.Difficulty=2}] run function world_manager:event/difficulty/2
# 3
    execute if entity @p[scores={Trigger.Difficulty=3}] run function world_manager:event/difficulty/3
# 4
    execute if entity @p[scores={Trigger.Difficulty=4}] run function world_manager:event/difficulty/4
# 5
    execute if entity @p[scores={Trigger.Difficulty=5}] run function world_manager:event/difficulty/5
