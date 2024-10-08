#> true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/start
#
# 捜索スタート
#
# @within function true_crafter_mode:entity/mob/**

# 自分が対象です！
    tag @s add This

# 頭に置く用のちいちゃいモブを呼ぶ。動作中はコイツがAIを担当するようになる
    summon zombified_piglin ~ ~ ~ {Silent:1b,Invulnerable:1b,IsBaby:1b,Tags:["TMCM.CustomAI","TMCM.CustomAI.Search","Chuz.Init","Chuz.NonVanillaMob"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.scale",base:0.0625}]}

# 先に乗っているものを全部降ろす
    execute on passengers run tag @s add TemporaryDismount
    execute on passengers run ride @s dismount

# 召喚したのを頭に置く
    ride @n[type=zombified_piglin,tag=Chuz.Init] mount @s

# 乗ってたものを持っかい乗せる
    execute as @e[tag=TemporaryDismount,distance=..3] run ride @s mount @n[tag=This,distance=..3]
    execute on passengers run tag @s remove TemporaryDismount

# 頭に乗せたモブをプレイヤーに敵対させる
    execute on passengers if entity @s[type=zombified_piglin,tag=Chuz.Init] run data modify entity @s AngryAt set from entity @p UUID

# ピグリンからタグを外す
    execute on passengers if entity @s[type=zombified_piglin,tag=Chuz.Init] run tag @s remove Chuz.Init

# タグ付与
    tag @s add TMCM.UsingCustomAI

# リセット
    tag @s remove This
