#> world_manager:event/difficulty/close
#
# 閉じた時
#
# @within function world_manager:event/difficulty/**

# ゲームルールを戻す
    execute if score $sendCommandFeedback Global matches 0 run gamerule sendCommandFeedback false
    execute if score $sendCommandFeedback Global matches 1 run gamerule sendCommandFeedback true

# スコアボードリセット
    scoreboard players reset $sendCommandFeedback Global
    scoreboard players reset @p Trigger.Difficulty
