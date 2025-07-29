#> asset:mob/enemy.creeper/in_hostile/
#
# 敵対時の動作
#
# @within asset:mob/alias/enemy.in_hostile

# 付近にだれかいるなら起爆準備
    # 20tick以下の場合は、付近に誰かいるならスコア加算
        execute if entity @a[distance=..7] unless score @s 1011.Tick matches 20.. run scoreboard players add @s[tag=Standstill] 1011.Tick 1
    # ある程度準備すると勝手に加算されるようになる！
        execute if score @s 1011.Tick matches 20.. run scoreboard players add @s 1011.Tick 1
    # スコア0以上なら起爆演出
        execute if score @s[tag=Standstill] 1011.Tick matches 0.. run function asset:mob/enemy.creeper/in_hostile/explosion/windup
    # スコア0ならリセット
        scoreboard players reset @s[scores={1011.Tick=..0}] 1011.Tick

# 20tick未満の場合は離れられるとスコアリセットする
    execute unless entity @a[distance=..7] if score @s 1011.Tick matches 1..19 run attribute @s knockback_resistance base set 0
    execute unless entity @a[distance=..7] if score @s 1011.Tick matches 1..19 run scoreboard players remove @s 1011.Tick 1

# 爆発を起こす
    execute if score @s 1011.Tick matches 30 run function asset:mob/enemy.creeper/in_hostile/explosion/

# 爆発が終わったあとに無敵を解除し、スコアリセット
    execute if score @s 1011.Tick matches 31.. run function asset:mob/enemy.creeper/in_hostile/explosion/end

# 着火されちゃった場合はFuseを30にし、スコアを常時リセットする
    data modify entity @s[nbt={ignited:1b}] Fuse set value 30
    scoreboard players reset @s[nbt={ignited:1b}] 1011.Tick
