#> true_crafter_mode:entity/mob/witch/moveset/main
#
# メイン動作
#
# @within function true_crafter_mode:entity/mob/witch/tick

# 自爆してやかましいので毒と鈍足を消してしまう
    effect clear @s poison
    effect clear @s slowness

# クリーパーを強化する
    execute as @e[type=creeper,nbt={powered:1b},distance=..8] at @s run function true_crafter_mode:entity/mob/witch/moveset/charge_creeper

# 付近の自分以外の敵対モブにバフを配る
    execute as @e[type=#true_crafter_mode:hostile,type=!witch,distance=0.1..8] at @s run function true_crafter_mode:entity/mob/witch/moveset/buff

# ワープ
    execute if entity @p[distance=..16] run scoreboard players add @s TrueCrafterMode.Tick 1
# 前後が塞がれていないならワープ実行
    execute if entity @s[scores={TrueCrafterMode.Tick=60..}] facing entity @p eyes rotated ~ 0 run function true_crafter_mode:entity/mob/witch/moveset/teleport/

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# 水の中ですいすい
    execute if entity @a[distance=..30,tag=!TrueCrafterMode.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim