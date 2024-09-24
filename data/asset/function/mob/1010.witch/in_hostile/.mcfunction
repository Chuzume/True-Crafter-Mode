#> asset:mob/1010.witch/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1010/in_hostile

# 自爆してやかましいので毒と鈍足を消してしまう
    effect clear @s poison
    effect clear @s slowness

# クリーパーを強化する
    execute as @e[type=creeper,nbt=!{powered:1b},distance=..16] at @s run function asset:mob/1010.witch/in_hostile/charge_creeper

# 付近の自分以外の敵対モブにバフを配る
    execute as @e[type=#true_crafter_mode:enemy,type=!witch,distance=0.1..16] at @s run function asset:mob/1010.witch/in_hostile/buff

# 付近に敵がいるならワープのスコアを加算しだす
    execute if entity @p[distance=..16] run scoreboard players add @s TMCM.Tick 1
# 前後が塞がれていないならワープ実行
    execute if entity @s[scores={TMCM.Tick=60..}] facing entity @p eyes rotated ~ 0 run function true_crafter_mode:entity/mob/witch/moveset/teleport/

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
