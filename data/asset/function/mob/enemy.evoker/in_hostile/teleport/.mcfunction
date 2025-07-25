#> asset:mob/enemy.evoker/in_hostile/teleport/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.teleport

# 前後両方ダメだったらこの処理を中断する
    execute unless block ^ ^ ^-1 #lib:no_collision unless block ^ ^ ^1 #lib:no_collision run return fail

# サウンド
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# ワープ前の場所で演出
    execute at @s run function asset:mob/enemy.evoker/in_hostile/teleport/vfx

# 場所チェックしてワープ方向を決める
    # 後ろが塞がれているなら
        execute rotated ~ 0 unless block ^ ^ ^-1 #lib:no_collision run function asset:mob/enemy.evoker/in_hostile/teleport/recursive_tp
    # 後ろが塞がれていないかつ、対象が近いなら
        execute if entity @p[distance=..5] rotated ~ 0 if block ^ ^ ^-1 #lib:no_collision rotated ~180 ~ run function asset:mob/enemy.evoker/in_hostile/teleport/recursive_tp
    # 対象が遠くて、前が塞がっていないなら
        execute if entity @p[distance=5..] rotated ~ 0 if block ^ ^ ^1 #lib:no_collision run function asset:mob/enemy.evoker/in_hostile/teleport/recursive_tp

# ワープ後の場所で演出
    execute at @s run function asset:mob/enemy.evoker/in_hostile/teleport/vfx

# ワープ後の場所でファング設置
    execute at @s facing entity @n[tag=TMCM.Target] feet rotated ~ 0 run summon evoker_fangs ^ ^ ^2
    execute at @s facing entity @n[tag=TMCM.Target] feet rotated ~ 0 run summon evoker_fangs ^1 ^ ^2
    execute at @s facing entity @n[tag=TMCM.Target] feet rotated ~ 0 run summon evoker_fangs ^-1 ^ ^2

# リセット
    scoreboard players reset @s 1019.Tick
