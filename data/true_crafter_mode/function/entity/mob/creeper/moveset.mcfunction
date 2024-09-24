
# 付近にだれかいるなら起爆準備
    # 20tick以下の場合は、付近に誰かいるならスコア加算
        execute if entity @a[distance=..7] unless score @s TMCM.Tick matches 20.. run scoreboard players add @s[tag=Standstill] TMCM.Tick 1
    # ある程度準備すると勝手に加算されるようになる！
        execute if score @s TMCM.Tick matches 20.. run scoreboard players add @s TMCM.Tick 1
    # し、おまけに体からモクモクする！
        execute if score @s[tag=Standstill] TMCM.Tick matches 0.. run function true_crafter_mode:entity/mob/creeper/ignited_particle
    # スコア0ならリセット
        scoreboard players reset @s[scores={TMCM.Tick=..0}] TMCM.Tick

# 20tick未満の場合は離れられるとスコアリセットする
        execute unless entity @a[distance=..7] if score @s TMCM.Tick matches 1..19 run scoreboard players remove @s TMCM.Tick 1

# 爆発を起こす
    execute if score @s TMCM.Tick matches 30 run function true_crafter_mode:entity/mob/creeper/explosion

# 爆発が終わったあとに無敵を解除し、スコアリセット
    execute if score @s TMCM.Tick matches 31.. run function true_crafter_mode:entity/mob/creeper/return_to_normal

# 起爆中なら近くのエンティティを逃がす
    #execute if entity @s[tag=t.hardIgnited] as @e[distance=0.1..6,type=#true_crafter_mode:hostiles] at @s facing entity @e[type=creeper,limit=1,sort=nearest] eyes run function true_crafter_mode:enemy/common/dodge_creeper

# 着火されちゃった場合はFuseを30にし、スコアを常時リセットする
    data modify entity @s[nbt={ignited:1b}] Fuse set value 30
    scoreboard players reset @s[nbt={ignited:1b}] TMCM.Tick
