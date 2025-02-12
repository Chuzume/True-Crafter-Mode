#> core:load
#
# ロード処理
#
# @within tag/function minecraft:load

# スコアボード作成
    scoreboard objectives add MobUUID dummy {"text":"汎用固有MobID"}
    scoreboard objectives add ObjectID dummy {"text":"ObjectAssetのID"}
    scoreboard objectives add MobID dummy {"text":"MobAssetのID"}

    #> 1tickで消す一時変数の保存用スコアボード
    # @public
        scoreboard objectives add Temporary dummy

    #> 常に値が設定される変数用スコアボード
    # @public
        scoreboard objectives add Global dummy


    #> 定数類用スコアボード **変更厳禁**
    # @public
        scoreboard objectives add Const dummy
        function core:define_const

    #> AssetManager: Object -Public
    # @within function
    #   asset:object/**
        scoreboard objectives add General.Object.Tick dummy {"text":"ObjectAsset内で使用できるTick用スコア"}

    #> AssetManager: Mob -Public
    # @within function
    #   asset:mob/**
        scoreboard objectives add General.Mob.Tick dummy {"text":"MobAsset内で使用できるTick用スコア"}

    #> MobManager用スコアボード - 攻撃元
    # @within function
    #   core:early_handler/damage
    #   asset_manager:artifact/handler/on_damage_without_source
    #   mob_manager:entity_finder/entity_hurt_player/fetch_entity
        scoreboard objectives add TakenDamage custom:damage_taken
        scoreboard objectives add AbsorbedDamage custom:damage_absorbed
        
    #> UserID
    # @public
        scoreboard objectives add UserID dummy {"text":"汎用固有ユーザーID"}
        scoreboard objectives add MobUUID dummy {"text":"汎用固有MobID"}
        
    #> Library用スコアボード
    # @public
        scoreboard objectives add Lib dummy {"text":"ライブラリの引数/返り値用"}
        scoreboard objectives add ForwardTargetMobUUID dummy {"text":"ダメージを転送する対象"}

# チーム作成
    team add TrueCrafterEnemy
    team modify TrueCrafterEnemy friendlyFire false
    team modify TrueCrafterEnemy nametagVisibility never
    
# フォースロード
    forceload add 0 0 0 0

# 原点を召喚
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}

# その他初期化が必要なもの
    function #asset:mob/load
