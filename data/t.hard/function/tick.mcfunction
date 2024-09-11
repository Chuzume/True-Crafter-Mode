
# クリエとスペクテイターの奴を除外
    execute as @a if entity @s[gamemode=!survival,gamemode=!adventure] run tag @s add t.hardException
    tag @a[gamemode=!spectator,gamemode=!creative] remove t.hardException


# 敵モブNBTリセット
    tag @e[tag=ChuzOnGround] remove ChuzOnGround
    tag @e[tag=ChuzHurtEntity] remove ChuzHurtEntity
    tag @e[tag=ChuzHurtEntity9s] remove ChuzHurtEntity9s
    tag @e[tag=ChuzStandstill] remove ChuzStandstill

# 敵モブNBT関連
    tag @e[tag=!ChuzOnGround,nbt={OnGround:1b}] add ChuzOnGround
    tag @e[tag=!ChuzHurtEntity,team=!null,nbt=!{HurtTime:0s}] add ChuzHurtEntity
    tag @e[tag=!ChuzHurtEntity9s,team=!null,nbt={HurtTime:9s}] add ChuzHurtEntity9s
    tag @e[tag=!ChuzStandstill,team=!null,nbt={Motion:[0.0,-0.0784000015258789d,0.0]}] add ChuzStandstill

# ゾンビ系
    execute as @e[type=#t.hard:zombies,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:entity/mob/zombie/tick

# スケルトン系
    execute as @e[type=#minecraft:skeletons,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/skeleton/tick

# スパイダー
    execute as @e[type=spider,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/spider/tick
# ネット
    execute as @e[type=item,tag=t.hard_Net] at @s run function t.hard:enemy/spider/net/tick

# ケイブスパイダー
    execute as @e[type=cave_spider,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..30] run function t.hard:enemy/cave_spider/tick
# 毒弾
    execute as @e[type=item,tag=t.hard_PoisonBall] at @s run function t.hard:enemy/cave_spider/poison_ball/tick

# クリーパー
    execute as @e[type=creeper,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/creeper/tick

# エンダーマン
    execute as @e[type=enderman,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/enderman/main

# エンダーアイ
    execute as @e[type=vex,tag=t.hardEnder_Eye] at @s if entity @a[distance=..30] run function t.hard:enemy/enderman/ender_eye
    execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{id:t.hardEnder_Eye}}}}] at @s run function t.hard:death_event/ender_eye

# ブレイズ
    execute if entity @e[type=blaze,limit=1] as @e[type=blaze,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/blaze/attack
# ブレイズの火の玉
    execute if entity @e[type=armor_stand,tag=t.hard_BlazeBullet,limit=1] as @e[type=armor_stand,tag=t.hard_BlazeBullet] at @s run function t.hard:enemy/blaze/fireball/tick

# スライム/マグマキューブ
    execute if entity @e[type=slime,limit=1] as @e[type=slime,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..30] run function t.hard:enemy/slime/main
    execute if entity @e[type=magma_cube,limit=1] as @e[type=magma_cube,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..30] run function t.hard:enemy/magma_cube

# エヴォーカー
    execute if entity @e[type=evoker,limit=1] as @e[type=evoker,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..30] run function t.hard:enemy/evoker/main

# ヴィンディケーター
    execute if entity @e[type=vindicator,limit=1] as @e[type=vindicator,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/vindicator/main

# ピリジャー
    execute if entity @e[type=pillager,limit=1] as @e[type=pillager,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/pillager/main

# イリュージョナー
    execute if entity @e[type=illusioner,limit=1] as @e[type=illusioner,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..30] run function t.hard:enemy/illusioner

# ウィッチ
    execute as @e[type=witch] at @s if entity @a[distance=..30] run function t.hard:enemy/witch/main

# フロスト（ゲスト出演）
    execute if entity @e[type=stray,tag=t.hardFrost,limit=1] as @e[type=stray,tag=t.hardFrost] at @s if entity @a[distance=..30] run function t.hard:enemy/frost/main
# フロスト死亡
    execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{id:t.hardFrost}}}},limit=1] as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{id:t.hardFrost}}}}] at @s run function t.hard:death_event/frost
# フロストの弾
    execute if entity @e[type=armor_stand,tag=t.hardFrostShot,limit=1] as @e[type=armor_stand,tag=t.hardFrostShot] at @s run function t.hard:enemy/frost/frost_shot

# ピグリン
    execute if entity @e[type=piglin,limit=1] as @e[type=piglin,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/piglin/tick
# 炎の矢
    execute if entity @e[type=arrow,nbt={item:{components:{"minecraft:custom_data":{CustomPotionEffects:[{Amplifier:3b,Duration:1,Id:27b}]}}}},limit=1] as @e[type=arrow,nbt={item:{components:{"minecraft:custom_data":{CustomPotionEffects:[{Amplifier:3b,Duration:1,Id:27b}]}}}}] run data merge entity @s {Fire:9999s,crit:1b,item:{components:{"minecraft:custom_data":{CustomPotionEffects:[{}]}}}}

# ピグリンブルート
    execute if entity @e[type=piglin_brute,limit=1] as @e[type=piglin_brute,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=..80] run function t.hard:enemy/piglin_brute/main

# ピグリンが泳いでる間に倒された場合
    execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{id:t.hardSwiming_Piglin}}}},limit=1] as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{id:t.hardSwiming_Piglin}}}}] at @s run function t.hard:death_event/piglin_swimming

# ガスト
    execute if entity @e[type=ghast,limit=1] as @e[type=ghast,tag=!Chuz_NonVanillaMob] at @s run function t.hard:enemy/ghast/main
    execute if entity @e[type=armor_stand,tag=t.hardGhastBullet,limit=1] as @e[type=armor_stand,tag=t.hardGhastBullet] at @s run function t.hard:enemy/ghast/fireball/bullet

# エンドラ
    execute if entity @e[type=ender_dragon,limit=1] as @e[type=ender_dragon,tag=!Chuz_NonVanillaMob] at @s if entity @a[distance=0..] run function t.hard:enemy/ender_dragon/attack
# エンドラの使う技
    execute if entity @e[type=fireball,tag=t.hardDragonfire,limit=1] as @e[type=fireball,tag=t.hardDragonfire] at @s run function t.hard:enemy/ender_dragon/dragon_fireball
    execute if entity @e[type=armor_stand,tag=t.hardDragonShot,limit=1] as @e[type=armor_stand,tag=t.hardDragonShot] at @s run function t.hard:enemy/ender_dragon/ender_flame
    execute if entity @e[type=armor_stand,tag=t.hardEyeShot,limit=1] as @e[type=armor_stand,tag=t.hardEyeShot] at @s run function t.hard:enemy/ender_dragon/eyeshot
    execute if entity @e[type=armor_stand,tag=t.hardThunder_Place,limit=1] as @e[type=armor_stand,tag=t.hardThunder_Place] at @s run function t.hard:enemy/ender_dragon/dragon_thunder_2
    execute if entity @e[type=armor_stand,tag=t.hardCrystal_Place,limit=1] as @e[type=armor_stand,tag=t.hardCrystal_Place] at @s run function t.hard:enemy/ender_dragon/crystal_place
    execute if entity @e[type=armor_stand,tag=t.hardEye_Place,limit=1] as @e[type=armor_stand,tag=t.hardEye_Place] at @s run function t.hard:enemy/ender_dragon/summon_eyes_2
    execute if entity @e[type=vex,tag=t.hardDragon_Eye,limit=1] as @e[type=vex,tag=t.hardDragon_Eye] at @s if entity @a[distance=..30] run function t.hard:enemy/ender_dragon/dragon_eye

# 敵ブロック
    execute as @e[type=marker,tag=TrueCrafterMode.Entity.EnemyBlock] at @s if entity @a[distance=..30] run function t.hard:entity/enemy_block/

# t.hardShielderタグ持ちなら矢を跳ね返す（共通タグ）
    execute as @e[tag=t.hardShielder] at @s if entity @e[type=arrow,nbt={inGround:0b,PierceLevel:0b},distance=..4] run data merge entity @s {Invulnerable:1b}
    execute as @e[tag=t.hardShielder] at @s unless entity @e[type=arrow,nbt={inGround:0b,PierceLevel:0b},distance=..4] run data merge entity @s {Invulnerable:0b}