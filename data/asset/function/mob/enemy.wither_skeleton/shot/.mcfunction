#> asset:mob/enemy.wither_skeleton/shot/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.shot

# ターゲットにタグを付与
    execute on target run tag @s[distance=..32] add TMCM.Target

# 最寄りの矢にタグ付与
    execute as @n[type=arrow,tag=!AssetObject] at @s run function asset:mob/enemy.elite_skeleton/shot/convert

# 演出
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1.5 2

# リセット
    tag @n[tag=TMCM.Target,distance=..32] remove TMCM.Target
