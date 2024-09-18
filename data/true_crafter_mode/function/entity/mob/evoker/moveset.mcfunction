#> true_crafter_mode:entity/mob/evoker/moveset
#
# 
#
# @within function true_crafter_mode:entity/mob/evoker/tick

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# どういうわけかゴーレムを分解
    execute as @e[type=iron_golem,distance=..5] at @s run function true_crafter_mode:entity/mob/evoker/destroy_golem

# ワープ
    execute if entity @p[distance=..5] run scoreboard players add @s TMCM.Tick 1
# 前後が塞がれていないならワープ実行
    execute if entity @s[scores={TMCM.Tick=60..}] facing entity @n[tag=TMCM.Target,distance=..16] eyes rotated ~ 0 run function true_crafter_mode:entity/mob/evoker/warp_fang/

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# 水の中ですいすい
    #execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target