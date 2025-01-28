#> asset:mob/1019.evoker/in_hostile/final_summon/start
#
# 召喚スタート
#
# @within function asset:mob/1019.evoker/in_hostile/

# 魔法がクールタイムに入る
    data modify entity @s SpellTicks set value 60

# テレポートもクールタイム
    scoreboard players set @s 1019.Tick -60

# エフェクト
    effect give @s slowness 2 10
    effect give @s resistance 2 4

# 付近の対象に対するエフェクト
    effect give @a[distance=..16] minecraft:darkness 3 0 true

# 演出
    playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 2 2
    particle explosion ~ ~1 ~

# 乱数取得
    execute store result score $Random Chuz.Temporary run random value 0..5

# デバッグ用
    #scoreboard players set $Random Chuz.Temporary 2

# 乱数に応じてセリフを言う
    execute if score $Random Chuz.Temporary matches 0 run tellraw @a[distance=..16] [{"color":"white","text":"<"},{"color":"#95a0a0","text":"Evoker"},{"color":"white","text":"> "},{"color":"white","font":"illageralt","text":"Cover me!"}]
    execute if score $Random Chuz.Temporary matches 1 run tellraw @a[distance=..16] [{"color":"white","text":"<"},{"color":"#95a0a0","text":"Evoker"},{"color":"white","text":"> "},{"color":"white","font":"illageralt","text":"Distract them!"}]
    execute if score $Random Chuz.Temporary matches 2 run tellraw @a[distance=..16] [{"color":"white","text":"<"},{"color":"#95a0a0","text":"Evoker"},{"color":"white","text":"> "},{"color":"white","font":"illageralt","text":"Strength for illagers!"}]
    execute if score $Random Chuz.Temporary matches 3 run tellraw @a[distance=..16] [{"color":"white","text":"<"},{"color":"#95a0a0","text":"Evoker"},{"color":"white","text":"> "},{"color":"white","font":"illageralt","text":"Not yet!"}]
    execute if score $Random Chuz.Temporary matches 4 run tellraw @a[distance=..16] [{"color":"white","text":"<"},{"color":"#95a0a0","text":"Evoker"},{"color":"white","text":"> "},{"color":"white","font":"illageralt","text":"Come, my friends!"}]
    execute if score $Random Chuz.Temporary matches 5 run tellraw @a[distance=..16] [{"color":"white","text":"<"},{"color":"#95a0a0","text":"Evoker"},{"color":"white","text":"> "},{"color":"white","font":"illageralt","text":"I'm not alone!"}]

# タグ付与
    tag @s add 1019.Using.Summon
    tag @s add 1019.SummonUsed
