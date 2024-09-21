#> true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/start
#
# 捜索スタート
#
# @within function true_crafter_mode:entity/mob/**

# 頭に置く用のちいちゃいピグリンを呼ぶ
    #summon piglin ~ ~ ~ {Silent:1b,Invulnerable:1b,IsImmuneToZombification:1b,Tags:["TMCM.CustomAI","TMCM.CustomAI.Search","Chuz.Init","Chuz.NonVanillaMob"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.scale",base:0.0625},{id:"minecraft:generic.step_height",base:10}]}
    summon zombified_piglin ~ ~ ~ {Silent:1b,Invulnerable:1b,IsBaby:1b,Tags:["TMCM.CustomAI","TMCM.CustomAI.Search","Chuz.Init","Chuz.NonVanillaMob"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.scale",base:0.0625}]}
# 召喚したのを頭に置く
    ride @n[type=zombified_piglin,tag=Chuz.Init] mount @s
# ピグリンからタグを外す
    execute on passengers if entity @s[type=zombified_piglin,tag=Chuz.Init] run tag @s remove Chuz.Init
# タグ付与
    tag @s add TMCM.UsingCustomAI