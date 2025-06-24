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
    # データ初期化部
        # execute as @e[type=#true_crafter_mode:enemy,type=!vex,type=!ravager,type=!illusioner,type=!player,tag=!Chuz.NonVanillaMob,tag=!AlreadyInitMob] at @s run function mob_manager:init/
    # MobAsset処理
        execute as @e[tag=ProcessCommonTag] at @s run function asset_manager:mob/common_tag/

# Mob処理
    execute as @e[tag=AssetMob] at @s run function asset_manager:mob/tick/

# Objects処理
    execute as @e[tag=AssetObject] at @s run function asset_manager:object/triggers/tick

# UserID割り振り
    execute as @a unless score @s UserID matches 0.. run function core:give_user_id

# エフェクト処理
#    execute as @e[type=#lib:living,tag=HasAssetEffect] at @s run function asset_manager:effect/tick

# ワールドイベント
    function world_manager:event/tick

# asset:contextの明示的な全削除
#    function asset_manager:common/reset_all_context

# tick処理後のプレイヤー処理部
    execute as @a at @s run function core:tick/player/post

# 攻撃元/先の紐づけをリセット
#    execute if entity @a[scores={AttackingEntity=0..}] run function mob_manager:entity_finder/attacking_entity/reset
#    execute if entity @a[scores={AttackedEntity=0..}] run function mob_manager:entity_finder/attacked_entity/reset
