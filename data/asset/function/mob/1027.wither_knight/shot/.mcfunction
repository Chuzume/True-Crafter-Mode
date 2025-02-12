#> asset:mob/1027.wither_knight/shot/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1027/shot

# ターゲットにタグを付与
    execute on target run tag @s[distance=..32] add TMCM.Target

# 最寄りの矢にタグ付与
    execute as @n[type=arrow,tag=!AssetObject] at @s run function asset:mob/1027.wither_knight/shot/convert

# 演出
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1.5 2

# 射撃間隔縮めるためにデータ書き換え: FallFlyingは勝手に戻るので都合がいい
# ただしクールタイム中はやらない
    execute unless score @s 1027.CoolTime matches 0.. run function asset:mob/1027.wither_knight/shot/step
# クールタイムに入ってなければクールタイムのカウントを増やす
    execute unless score @s 1027.CoolTime matches 0.. run scoreboard players add @s 1027.ShotCount 1

# 数回ごとに休憩する
    scoreboard players set @s[scores={1027.ShotCount=4}] 1027.CoolTime 140
    scoreboard players reset @s[scores={1027.ShotCount=4}] 1027.ShotCount

# リセット
    tag @n[tag=TMCM.Target,distance=..32] remove TMCM.Target
