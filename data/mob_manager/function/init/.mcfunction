#> mob_manager:init/
#
# このデータパックにおいては、強化対象のモブかつ、自然にスポーンしたAssetMobじゃないモブに対して実行する
#
# @within function core:tick

# フツーの敵
    # ゾンビ
        execute if entity @s[type=zombie] run data modify storage api: Argument.ID set value "enemy.zombie"
    # ハスク
        execute if entity @s[type=husk] run data modify storage api: Argument.ID set value "enemy.husk"
    # ドラウンド
        execute if entity @s[type=drowned] run data modify storage api: Argument.ID set value "enemy.drowned"
    # ゾンビピグリン
        execute if entity @s[type=zombified_piglin] run data modify storage api: Argument.ID set value "enemy.zombified_piglin"
    # ゾンビ村人
        execute if entity @s[type=zombie_villager] run data modify storage api: Argument.ID set value "enemy.zombie_villager"
    # スケルトン
        execute if entity @s[type=skeleton] run data modify storage api: Argument.ID set value "enemy.skeleton"
    # ストレイ
        execute if entity @s[type=stray] run data modify storage api: Argument.ID set value "enemy.stray"
    # ボグド
        execute if entity @s[type=bogged] run data modify storage api: Argument.ID set value "enemy.bogged"
    # ウィザースケルトン
        execute if entity @s[type=wither_skeleton] run data modify storage api: Argument.ID set value "enemy.wither_skeleton"
    # ウィッチ
        execute if entity @s[type=witch] run data modify storage api: Argument.ID set value "enemy.witch"
    # クリーパー
        execute if entity @s[type=creeper] run data modify storage api: Argument.ID set value "enemy.creeper"
    # エンダーマン
        execute if entity @s[type=enderman] run function mob_manager:init/mob/enderman/
    # クモ
        execute if entity @s[type=spider] run data modify storage api: Argument.ID set value "enemy.spider"
    # 洞窟グモ
        execute if entity @s[type=cave_spider] run data modify storage api: Argument.ID set value "enemy.cave_spider"
    # ピグリン(剣)
        execute if entity @s[type=piglin,nbt={equipment:{mainhand:{id:"minecraft:golden_sword"}}}] run data modify storage api: Argument.ID set value "enemy.piglin_sword"
    # ピグリン(クロスボウ)
        execute if entity @s[type=piglin,nbt={equipment:{mainhand:{id:"minecraft:crossbow"}}}] run data modify storage api: Argument.ID set value "enemy.piglin_crossbow"
    # ピグリンブルート
        execute if entity @s[type=piglin_brute] run data modify storage api: Argument.ID set value "enemy.piglin_brute"
    # ヴィンディケーター
        execute if entity @s[type=vindicator] run data modify storage api: Argument.ID set value "enemy.vindicator"
    # ピリジャー
        execute if entity @s[type=pillager] run data modify storage api: Argument.ID set value "enemy.pillager"
    # エヴォーカー
        execute if entity @s[type=evoker] run data modify storage api: Argument.ID set value "enemy.evoker"
    # スライム
        execute if entity @s[type=slime] run data modify storage api: Argument.ID set value "enemy.slime"
    # マグマキューブ
        execute if entity @s[type=magma_cube] run data modify storage api: Argument.ID set value "enemy.magma_cube"

# ボスキャラ
    # エンダードラゴン
        execute if entity @s[type=ender_dragon] run data modify storage api: Argument.ID set value "enemy.ender_dragon"
    # ウィザー
        execute if entity @s[type=wither] run data modify storage api: Argument.ID set value "enemy.wither"

# 難易度3以降でエリート化
    execute if score $Difficulty Global matches 3.. if predicate lib:random_pass_per/15 if entity @s[type=zombie] run data modify storage api: Argument.ID set value "enemy.zombie_brute"
    execute if score $Difficulty Global matches 3.. if predicate lib:random_pass_per/15 if entity @s[type=skeleton] run data modify storage api: Argument.ID set value "enemy.elite_skeleton"
    execute if score $Difficulty Global matches 3.. if predicate lib:random_pass_per/15 if entity @s[type=stray] run data modify storage api: Argument.ID set value "enemy.stray_elite"
    execute if score $Difficulty Global matches 3.. if predicate lib:random_pass_per/15 if entity @s[type=bogged] run data modify storage api: Argument.ID set value "enemy.bogged_elite"
# 難易度3以降で増援
    execute if score $Difficulty Global matches 3.. if predicate lib:random_pass_per/25 if entity @s[type=spider] run summon cave_spider ~ ~ ~
    execute if score $Difficulty Global matches 3.. if predicate lib:random_pass_per/25 if entity @s[type=guardian] run summon drowned ~ ~ ~
    execute if score $Difficulty Global matches 3.. if predicate lib:random_pass_per/50 if entity @s[type=witch] run summon minecraft:vindicator
# 難易度4以降で怪しい増援
    execute if score $Difficulty Global matches 4.. if predicate lib:random_pass_per/10 if entity @s[type=evoker] run summon illusioner ~ ~ ~
    execute if score $Difficulty Global matches 4.. if predicate lib:random_pass_per/10 if entity @s[type=piglin] run summon minecraft:piglin_brute ~ ~ ~

# エラー
    execute unless data storage api: Argument.ID run tellraw @a [{"color":"red","text":"エラー! :"},{"color":"white","text":"実行しちゃいけない対象にInit処理がかかっている:" },{"color":"red","selector":"@s"}]

# 数値が入っていないなら処理を中断する
    execute unless data storage api: Argument.ID run tag @s remove MobInit
    execute unless data storage api: Argument.ID run return fail

# 出現したモブを今召喚したものとしてRegisterを行う
    tag @s add MobInit
    data modify storage asset:context init_to_natural_mob set value true

# 召喚
    function api:mob/summon

# やることやったらタグ付与
    tag @s add AlreadyInitMob
