#> asset:mob/enemy.elite_skeleton/shot/
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

# 射撃間隔縮めるためにデータ書き換え: FallFlyingは勝手に戻るので都合がいい
# ただしクールタイム中はやらない
    execute unless score @s enemy.elite_skeleton.CoolTime matches 0.. run function asset:mob/enemy.elite_skeleton/shot/step
# クールタイムに入ってなければクールタイムのカウントを増やす
    execute unless score @s enemy.elite_skeleton.CoolTime matches 0.. run scoreboard players add @s enemy.elite_skeleton.ShotCount 1

# 数回ごとに休憩する
    scoreboard players set @s[scores={enemy.elite_skeleton.ShotCount=2}] enemy.elite_skeleton.CoolTime 100
    scoreboard players reset @s[scores={enemy.elite_skeleton.ShotCount=2}] enemy.elite_skeleton.ShotCount

# リセット
    tag @n[tag=TMCM.Target,distance=..32] remove TMCM.Target
