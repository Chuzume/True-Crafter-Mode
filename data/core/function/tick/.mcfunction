#> core:tick/
#
# 
#
# @within tag/function minecraft:tick

# プレイヤー処理部
    execute as @a at @s run function core:tick/player/

# asset:contextの明示的な全削除
#    function asset_manager:common/reset_all_context

# Mob処理部
    # AssetMobのグローバル処理
        function asset_manager:mob/tick/global
    # データ初期化部: 難易度1ではやらない
        execute if score $Difficulty Global matches 2.. as @e[type=#lib:enemy_has_special,tag=!AssetMob,tag=!AIMob] unless entity @s[type=piglin,nbt={IsBaby:1b}] at @s run function mob_manager:init/
    # MobAsset処理
        execute as @e[tag=ProcessCommonTag] at @s run function asset_manager:mob/common_tag/
    # 難易度による別枠の強化
        execute if score $Difficulty Global matches 4.. as @e[type=#lib:enemy,tag=!AIMob,tag=!AlreadyEnhancedMob,tag=!NoEnchance] run function mob_manager:init/alternative_multiply/

# Mob処理
    execute as @e[tag=AssetMob] at @s run function asset_manager:mob/tick/

# Objects処理
    execute as @e[tag=AssetObject] at @s run function asset_manager:object/triggers/tick

# TODO: こういう設置型のアイテムが増えるようなら、何かいい案を考えるべきだ
# まともな案がない…不吉な焚き火はとりあえずベタ書きだ…
    execute as @e[type=armor_stand,tag=OminousCampfirePlace] at @s run function core:tick/ominous_campifire_place

# UserID割り振り
    execute as @a unless score @s UserID matches 0.. run function core:give_user_id

# エフェクト処理
    execute as @e[type=#lib:living,tag=HasAssetEffect] at @s run function asset_manager:effect/tick

# ワールドイベント
    function world_manager:event/tick

# asset:contextの明示的な全削除
#    function asset_manager:common/reset_all_context

# tick処理後のプレイヤー処理部
#    execute as @a at @s run function core:tick/player/post

# 攻撃元/先の紐づけをリセット
#    execute if entity @a[scores={AttackingEntity=0..}] run function mob_manager:entity_finder/attacking_entity/reset
#    execute if entity @a[scores={AttackedEntity=0..}] run function mob_manager:entity_finder/attacked_entity/reset
