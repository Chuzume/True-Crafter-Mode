
# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# ポイズンボール射出
    execute if entity @n[tag=TMCM.Target,distance=5..15] run scoreboard players add @s TMCM.Tick 1
    execute if entity @s[scores={TMCM.Tick=40}] run function true_crafter_mode:entity/mob/cave_spider/shoot

# スコア減少
    execute unless entity @n[tag=TMCM.Target,distance=5..15] unless score @s TMCM.Tick matches ..0 run scoreboard players remove @s TMCM.Tick 1
    scoreboard players reset @s[scores={TMCM.Tick=..0}] TMCM.Tick
    
# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target