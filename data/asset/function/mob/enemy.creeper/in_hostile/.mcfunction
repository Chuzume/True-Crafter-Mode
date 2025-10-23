#> asset:mob/enemy.creeper/in_hostile/
#
# 敵対時の動作
#
# @within asset:mob/alias/enemy.in_hostile

# 付近にだれかいるなら起爆準備
    # 20tick以下の場合は、付近に誰かいるならスコア加算
        execute if entity @a[distance=..7] unless score @s General.Mob.Tick matches 25.. run scoreboard players add @s[tag=Standstill] General.Mob.Tick 1
    # ある程度準備すると勝手に加算されるようになる！
        execute if score @s General.Mob.Tick matches 25.. run scoreboard players add @s General.Mob.Tick 1
    # スコア0以上なら起爆演出
        execute if score @s[tag=Standstill] General.Mob.Tick matches 0.. run function asset:mob/enemy.creeper/in_hostile/explosion/windup
    # スコア0ならリセット
        scoreboard players reset @s[scores={General.Mob.Tick=..0}] General.Mob.Tick

# 一定のtick未満の場合は離れられるとスコアリセットする
    execute unless entity @a[distance=..7] if score @s General.Mob.Tick matches 1..25 run attribute @s knockback_resistance base set 0
    execute unless entity @a[distance=..7] if score @s General.Mob.Tick matches 1..25 run scoreboard players reset @s General.Mob.Tick
    execute if score @s[tag=!Standstill] General.Mob.Tick matches 1..25 run scoreboard players reset @s General.Mob.Tick

# 爆発を起こす
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/enemy.creeper/in_hostile/explosion/

# 爆発が終わったあとに無敵を解除し、スコアリセット
    execute if score @s General.Mob.Tick matches 31.. run function asset:mob/enemy.creeper/in_hostile/explosion/end

# 着火されちゃった場合はFuseを30にし、スコアを常時リセットする
    data modify entity @s[nbt={ignited:1b}] Fuse set value 30s
    scoreboard players reset @s[nbt={ignited:1b}] General.Mob.Tick

# 水に触れている場合は普通に爆発する
    execute if predicate lib:is_in_water/include_flowing unless entity @s[nbt={Fuse:30s}] run data modify entity @s Fuse set value 30s
    execute unless predicate lib:is_in_water/include_flowing unless entity @s[nbt={Fuse:9999s}] run data modify entity @s Fuse set value 9999s
