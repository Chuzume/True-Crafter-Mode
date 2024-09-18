
# クリエとスペクテイターの奴を除外
    execute as @a if entity @s[gamemode=!survival,gamemode=!adventure] run tag @s add TMCM.Exception
    tag @a[gamemode=!spectator,gamemode=!creative] remove TMCM.Exception


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
    execute as @e[type=#minecraft:zombies,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/zombie/tick

# スケルトン系
    execute as @e[type=#minecraft:skeletons,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/skeleton/tick
# 腰についてるアイテムの処理
    execute as @e[type=item_display,tag=TMCM.Other.Sheath] at @s run function true_crafter_mode:entity/other/sheath

# スパイダー
    execute as @e[type=spider,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/spider/tick
# ウェブ弾
    execute as @e[type=armor_stand,tag=TMCM.Projectile.Web] at @s run function true_crafter_mode:entity/projectile/spider_web/tick

# ケイブスパイダー
    execute as @e[type=cave_spider,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..30] run function true_crafter_mode:entity/mob/cave_spider/tick
# 毒弾
    execute as @e[type=armor_stand,tag=TMCM.Projectile.PoisonBall] at @s run function true_crafter_mode:entity/projectile/poison_ball/tick

# クリーパー
    execute as @e[type=creeper,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/creeper/tick

# エンダーマン
    execute as @e[type=enderman,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/enderman/tick

# ブレイズ
    execute if entity @e[type=blaze,limit=1] as @e[type=blaze,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/blaze/attack
# ブレイズの火の玉
    execute if entity @e[type=armor_stand,tag=T.Hard_BlazeBullet,limit=1] as @e[type=armor_stand,tag=T.Hard_BlazeBullet] at @s run function true_crafter_mode:entity/mob/blaze/fireball/tick

# スライム/マグマキューブ
    execute as @e[type=slime,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/slime/tick

# エヴォーカー
    execute as @e[type=evoker,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..30] run function true_crafter_mode:entity/mob/evoker/tick

# ヴィンディケーター
    execute if entity @e[type=vindicator,limit=1] as @e[type=vindicator,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/vindicator/tick

# ピリジャー
    execute if entity @e[type=pillager,limit=1] as @e[type=pillager,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/pillager/tick

# イリュージョナー
    execute if entity @e[type=illusioner,limit=1] as @e[type=illusioner,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..30] run function true_crafter_mode:entity/mob/illusioner

# ウィッチ
    execute as @e[type=witch] at @s if entity @a[distance=..30] run function true_crafter_mode:entity/mob/witch/tick

# ピグリン
    execute as @e[type=piglin,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/piglin/tick

# ピグリンブルート
    execute as @e[type=piglin_brute,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=..80] run function true_crafter_mode:entity/mob/piglin_brute/main

# ピグリンが泳いでる間に倒された場合
    #execute if entity @e[type=item,nbt={Item:{tag:{ItemEvent:T.HardSwiming_Piglin}}},limit=1] as @e[type=item,nbt={Item:{tag:{ItemEvent:T.HardSwiming_Piglin}}}] at @s run function true_crafter_mode:death_event/piglin_swimming

# ガスト
    execute if entity @e[type=ghast,limit=1] as @e[type=ghast,tag=!Chuz.NonVanillaMob] at @s run function true_crafter_mode:entity/mob/ghast/main
    execute if entity @e[type=armor_stand,tag=T.HardGhastBullet,limit=1] as @e[type=armor_stand,tag=T.HardGhastBullet] at @s run function true_crafter_mode:entity/mob/ghast/fireball/bullet

# エンドラ
    execute if entity @e[type=ender_dragon,limit=1] as @e[type=ender_dragon,tag=!Chuz.NonVanillaMob] at @s if entity @a[distance=0..] run function true_crafter_mode:entity/mob/ender_dragon/attack
# エンドラの使う技
    execute if entity @e[type=fireball,tag=T.HardDragonfire,limit=1] as @e[type=fireball,tag=T.HardDragonfire] at @s run function true_crafter_mode:entity/mob/ender_dragon/dragon_fireball
    execute if entity @e[type=armor_stand,tag=T.HardDragonShot,limit=1] as @e[type=armor_stand,tag=T.HardDragonShot] at @s run function true_crafter_mode:entity/mob/ender_dragon/ender_flame
    execute if entity @e[type=armor_stand,tag=T.HardEyeShot,limit=1] as @e[type=armor_stand,tag=T.HardEyeShot] at @s run function true_crafter_mode:entity/mob/ender_dragon/eyeshot
    execute if entity @e[type=armor_stand,tag=T.HardThunder_Place,limit=1] as @e[type=armor_stand,tag=T.HardThunder_Place] at @s run function true_crafter_mode:entity/mob/ender_dragon/dragon_thunder_2
    execute if entity @e[type=armor_stand,tag=T.HardCrystal_Place,limit=1] as @e[type=armor_stand,tag=T.HardCrystal_Place] at @s run function true_crafter_mode:entity/mob/ender_dragon/crystal_place
    execute if entity @e[type=armor_stand,tag=T.HardEye_Place,limit=1] as @e[type=armor_stand,tag=T.HardEye_Place] at @s run function true_crafter_mode:entity/mob/ender_dragon/summon_eyes_2
    execute if entity @e[type=vex,tag=T.HardDragon_Eye,limit=1] as @e[type=vex,tag=T.HardDragon_Eye] at @s if entity @a[distance=..30] run function true_crafter_mode:entity/mob/ender_dragon/dragon_eye

# 敵ブロック
    execute as @e[type=marker,tag=TMCM.Entity.EnemyBlock] at @s if entity @a[distance=..30] run function true_crafter_mode:entity/enemy_block/

# T.HardShielderタグ持ちなら矢を跳ね返す（共通タグ）
    execute as @e[tag=T.HardShielder] at @s if entity @e[type=arrow,nbt={inGround:0b,PierceLevel:0b},distance=..4] run data merge entity @s {Invulnerable:1b}
    execute as @e[tag=T.HardShielder] at @s unless entity @e[type=arrow,nbt={inGround:0b,PierceLevel:0b},distance=..4] run data merge entity @s {Invulnerable:0b}
