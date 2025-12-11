#> world_manager:event/difficulty/close
#
# 閉じた時
#
# @within function world_manager:event/difficulty/**

# ゲームルールを戻す
    execute if score $sendCommandFeedback Global matches 0 run gamerule send_command_feedback false
    execute if score $sendCommandFeedback Global matches 1 run gamerule send_command_feedback true

# スコアボードリセット、念の為の全員のものをリセットする
    scoreboard players reset $sendCommandFeedback Global
    scoreboard players reset @a Trigger.Difficulty
