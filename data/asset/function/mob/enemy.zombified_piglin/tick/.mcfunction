#> asset:mob/enemy.zombified_piglin/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 勝手に敵対する
    data modify entity @s angry_at set from entity @p[tag=!PlayerShouldInvulnerable,distance=..48] UUID

# 継承元の処理を実行する
    execute if score $Difficulty Global matches 4.. run function asset:mob/super.tick
