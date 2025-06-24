#> player_manager:leave_game/send_lobby
#
# ゲーム参加者が抜けた場合の処理
#
# @within function core:handler/rejoin

# テレポート
    tp @s 500 126 496

# タグ解除
    tag @s remove GameJoinedPlayer

# 荷物削除
    clear @s
