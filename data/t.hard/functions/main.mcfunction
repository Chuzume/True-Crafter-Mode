#クリエとスペクテイターの奴を除外
execute as @a if entity @s[gamemode=!survival,gamemode=!adventure] run tag @s add T.Hard_Exception
tag @a[gamemode=!spectator,gamemode=!creative] remove T.Hard_Exception

#ゾンビ系
execute as @e[type=#t.hard:zombies,tag=!UniqueEnemy] at @s if entity @a[distance=..80] run function t.hard:enemy/zombie/main

# テスト
    #execute as @e[tag=T.Hard_Rotater] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    
#スケルトン系
execute as @e[type=#minecraft:skeletons,tag=!UniqueEnemy] at @s if entity @a[distance=..80] run function t.hard:enemy/skeleton/main

#スパイダー
execute as @e[type=spider,tag=!UniqueEnemy] at @s if entity @a[distance=..80] run function t.hard:enemy/spider/main

#ネット
execute as @e[type=item,tag=T.Hard_Net] at @s run function t.hard:enemy/spider/spider_net

#ケイブスパイダー
execute as @e[type=cave_spider,tag=!UniqueEnemy] at @s if entity @a[distance=..30,tag=!T.Hard_Exception] run function t.hard:enemy/cave_spider/attack

#ポイズンボール
execute as @e[type=item,tag=T.Hard_Poison_Ball] at @s run function t.hard:enemy/cave_spider/poison_ball

#クリーパー
execute as @e[type=creeper] at @s if entity @a[distance=..80] run function t.hard:enemy/creeper/main

#エンダーマン
execute as @e[type=enderman] at @s if entity @a[distance=..80] run function t.hard:enemy/enderman/main

#エンダーアイ
execute as @e[type=vex,tag=T.Hard_Ender_Eye] at @s if entity @a[distance=..30] run function t.hard:enemy/enderman/ender_eye
execute as @e[type=item,nbt={Item:{tag:{ItemEvent:T.Hard_Ender_Eye}}}] at @s run function t.hard:death_event/ender_eye

#ブレイズ
execute if entity @e[type=blaze,limit=1] as @e[type=blaze] at @s if entity @a[distance=..80] run function t.hard:enemy/blaze/attack
#ブレイズの火の玉
execute if entity @e[type=fireball,tag=T.Hard_Blazeball,limit=1] as @e[type=fireball,tag=T.Hard_Blazeball] at @s run function t.hard:enemy/blaze/blazeball

#スライム/マグマキューブ
execute if entity @e[type=slime,limit=1] as @e[type=slime] at @s if entity @a[distance=..30] run function t.hard:enemy/slime 
execute if entity @e[type=magma_cube,limit=1] as @e[type=magma_cube] at @s if entity @a[distance=..30] run function t.hard:enemy/magma_cube

#エヴォーカー
execute if entity @e[type=evoker,limit=1] as @e[type=evoker] at @s if entity @a[distance=..30] run function t.hard:enemy/evoker/main

#ヴィンディケーター
execute if entity @e[type=vindicator,limit=1] as @e[type=vindicator] at @s if entity @a[distance=..80] run function t.hard:enemy/vindicator/main

#ピリジャー
execute if entity @e[type=pillager,limit=1] as @e[type=pillager] at @s if entity @a[distance=..80] run function t.hard:enemy/pillager/main

#イリュージョナー
execute if entity @e[type=illusioner,limit=1] as @e[type=illusioner] at @s if entity @a[distance=..30] run function t.hard:enemy/illusioner

#ウィッチ
execute as @e[type=witch] at @s if entity @a[distance=..30] run function t.hard:enemy/witch/main

#フロスト（ゲスト出演）
execute if entity @e[type=stray,tag=T.Hard_Frost,limit=1] as @e[type=stray,tag=T.Hard_Frost] at @s if entity @a[distance=..30] run function t.hard:enemy/frost/main
#フロスト死亡
execute if entity @e[type=item,nbt={Item:{tag:{ItemEvent:T.Hard_Frost}}},limit=1] as @e[type=item,nbt={Item:{tag:{ItemEvent:T.Hard_Frost}}}] at @s run function t.hard:death_event/frost
#フロストの弾
execute if entity @e[type=armor_stand,tag=T.Hard_FrostShot,limit=1] as @e[type=armor_stand,tag=T.Hard_FrostShot] at @s run function t.hard:enemy/frost/frost_shot

#ピグリン
execute if entity @e[type=piglin,limit=1] as @e[type=piglin] at @s if entity @a[distance=..80] run function t.hard:enemy/piglin/main
#炎の矢
execute if entity @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:3b,Duration:1}]},limit=1] as @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:3b,Duration:1}]}] run data merge entity @s {Fire:9999s,crit:1b,CustomPotionEffects:[{}]}

#ピグリンブルート
execute if entity @e[type=piglin_brute,limit=1] as @e[type=piglin_brute] at @s if entity @a[distance=..80] run function t.hard:enemy/piglin_brute/main

#ピグリンが泳いでる間に倒された場合
execute if entity @e[type=item,nbt={Item:{tag:{ItemEvent:T.Hard_Swiming_Piglin}}},limit=1] as @e[type=item,nbt={Item:{tag:{ItemEvent:T.Hard_Swiming_Piglin}}}] at @s run function t.hard:death_event/piglin_swimming

# ガスト
    execute if entity @e[type=ghast,limit=1] as @e[type=ghast] at @s run function t.hard:enemy/ghast/main
    execute if entity @e[type=armor_stand,tag=T.Hard_GhastBullet,limit=1] as @e[type=armor_stand,tag=T.Hard_GhastBullet] at @s run function t.hard:enemy/ghast/fireball/bullet

# エンドラ
    execute if entity @e[type=ender_dragon,limit=1] as @e[type=ender_dragon] at @s if entity @a[distance=0..] run function t.hard:enemy/ender_dragon/attack
# エンドラの使う技
    execute if entity @e[type=fireball,tag=T.Hard_Dragonfire,limit=1] as @e[type=fireball,tag=T.Hard_Dragonfire] at @s run function t.hard:enemy/ender_dragon/dragon_fireball
    execute if entity @e[type=armor_stand,tag=T.Hard_DragonShot,limit=1] as @e[type=armor_stand,tag=T.Hard_DragonShot] at @s run function t.hard:enemy/ender_dragon/ender_flame
    execute if entity @e[type=armor_stand,tag=T.Hard_EyeShot,limit=1] as @e[type=armor_stand,tag=T.Hard_EyeShot] at @s run function t.hard:enemy/ender_dragon/eyeshot
    execute if entity @e[type=armor_stand,tag=T.Hard_Thunder_Place,limit=1] as @e[type=armor_stand,tag=T.Hard_Thunder_Place] at @s run function t.hard:enemy/ender_dragon/dragon_thunder_2
    execute if entity @e[type=armor_stand,tag=T.Hard_Crystal_Place,limit=1] as @e[type=armor_stand,tag=T.Hard_Crystal_Place] at @s run function t.hard:enemy/ender_dragon/crystal_place
    execute if entity @e[type=armor_stand,tag=T.Hard_Eye_Place,limit=1] as @e[type=armor_stand,tag=T.Hard_Eye_Place] at @s run function t.hard:enemy/ender_dragon/summon_eyes_2
    execute if entity @e[type=vex,tag=T.Hard_Dragon_Eye,limit=1] as @e[type=vex,tag=T.Hard_Dragon_Eye] at @s if entity @a[distance=..30] run function t.hard:enemy/ender_dragon/dragon_eye

# 敵ブロック
    execute if entity @e[type=item_frame,tag=T.Hard_Enemy_Block] as @e[type=item_frame,tag=T.Hard_Enemy_Block] at @s if entity @a[distance=..30] run function t.hard:enemy/enemy_block/normal
# 敵ブロック(ネザー)
    execute if entity @e[type=item_frame,tag=T.Hard_Enemy_Block_Nether] as @e[type=item_frame,tag=T.Hard_Enemy_Block_Nether] at @s if entity @a[distance=..30] run function t.hard:enemy/enemy_block/nether

# T.Hard_Shielderタグ持ちなら矢を跳ね返す（共通タグ）
    execute as @e[tag=T.Hard_Shielder] at @s if entity @e[type=arrow,nbt={inGround:0b,PierceLevel:0b},distance=..4] run data merge entity @s {Invulnerable:1b}
    execute as @e[tag=T.Hard_Shielder] at @s unless entity @e[type=arrow,nbt={inGround:0b,PierceLevel:0b},distance=..4] run data merge entity @s {Invulnerable:0b}