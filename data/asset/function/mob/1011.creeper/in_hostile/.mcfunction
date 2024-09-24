#> asset:mob/1011.creeper/in_hostile/
#
# 敵対時の動作
#
# @within asset:mob/alias/1011/in_hostile

# 付近にだれかいるなら起爆準備
    # 20tick以下の場合は、付近に誰かいるならスコア加算
        execute if entity @a[distance=..7] unless score @s 1011.Tick matches 20.. run scoreboard players add @s[tag=Standstill] 1011.Tick 1
    # ある程度準備すると勝手に加算されるようになる！
        execute if score @s 1011.Tick matches 20.. run scoreboard players add @s 1011.Tick 1
    # スコア0以上なら起爆演出
        execute if score @s[tag=Standstill] 1011.Tick matches 0.. run function asset:mob/1011.creeper/in_hostile/explosion/windup
    # スコア0ならリセット
        scoreboard players reset @s[scores={1011.Tick=..0}] 1011.Tick

# 20tick未満の場合は離れられるとスコアリセットする
        execute unless entity @a[distance=..7] if score @s 1011.Tick matches 1..19 run scoreboard players remove @s 1011.Tick 1

# 爆発を起こす
    execute if score @s 1011.Tick matches 30 run function asset:mob/1011.creeper/in_hostile/explosion/

# 爆発が終わったあとに無敵を解除し、スコアリセット
    execute if score @s 1011.Tick matches 31.. run function asset:mob/1011.creeper/in_hostile/explosion/end

# 起爆中なら近くのエンティティを逃がす
    #execute if entity @s[tag=t.hardIgnited] as @e[distance=0.1..6,type=#true_crafter_mode:hostiles] at @s facing entity @e[type=creeper,limit=1,sort=nearest] eyes run function true_crafter_mode:enemy/common/dodge_creeper

# 着火されちゃった場合はFuseを30にし、スコアを常時リセットする
    data modify entity @s[nbt={ignited:1b}] Fuse set value 30
    scoreboard players reset @s[nbt={ignited:1b}] 1011.Tick

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
