#> true_crafter_mode:entity/mob/witch/moveset/teleport/
#
# ワープする
#
# @within function true_crafter_mode:entity/mob/witch/moveset/main

# 前後両方ダメだったらこの処理を中断する
    execute unless block ^ ^ ^-1 #true_crafter_mode:no_collision unless block ^ ^ ^1 #true_crafter_mode:no_collision run return fail

# サウンド
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# ワープ前の場所で演出
    execute at @s run function true_crafter_mode:entity/mob/witch/moveset/teleport/vfx

# 場所チェックしてワープ方向を決める
    # 後ろが塞がれているなら
        execute rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:entity/mob/witch/moveset/teleport/recursive_tp
    # 後ろが塞がれていないかつ、対象が近いなら
        execute if entity @p[distance=..5] rotated ~ 0 if block ^ ^ ^-1 #true_crafter_mode:no_collision rotated ~180 ~ run function true_crafter_mode:entity/mob/witch/moveset/teleport/recursive_tp
    # 対象が遠くて、前が塞がっていないなら
        execute if entity @p[distance=5..] rotated ~ 0 if block ^ ^ ^1 #true_crafter_mode:no_collision run function true_crafter_mode:entity/mob/witch/moveset/teleport/recursive_tp

# ワープ後の場所で演出
    execute at @s run function true_crafter_mode:entity/mob/witch/moveset/teleport/vfx

# リセット
    scoreboard players reset @s TMCM.Tick