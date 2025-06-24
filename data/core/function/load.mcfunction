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

    #> 試合用スコア
    # @within function
    #   world_manager/event/
        scoreboard objectives add Game.Tick dummy {"text":"試合のTick用スコア"}

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

    #> イベントハンドラ用スコアボード
    # @within function
    #   asset_manager:artifact/triggers/**
    #   core:load_once
    #   core:handler/*
    #   core:tick/**
        scoreboard objectives add FirstJoinEvent custom:play_time {"text":"イベント: 初回Join"}
        scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: ゲームから退出"}
        scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
        scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}
        scoreboard objectives add Sneak custom:sneak_time {"text":"イベント: スニーク"}
        #scoreboard objectives add Elytra custom:aviate_one_cm {"text":"イベント: エリトラ"}
        #scoreboard objectives add DropEvent custom:drop {"text":"イベント: アイテムドロップ"}
        #scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick {"text":"イベント: クリック 人参棒"}
        scoreboard objectives add UseBowEvent used:bow {"text":"イベント: 弓の使用"}

# チーム作成と設定
    # 赤チーム
        team add Team.Red
        team modify Team.Red displayName {"color":"red","text":"赤チーム","underlined":true}
        team modify Team.Red prefix [{"color":"red","text":"[Red] "}]
        team modify Team.Red seeFriendlyInvisibles true
        team modify Team.Red nametagVisibility hideForOtherTeams
        team modify Team.Red friendlyFire false
        team modify Team.Red collisionRule pushOtherTeams
        team modify Team.Red color red
    # 青チーム
        team add Team.Blue
        team modify Team.Blue displayName {"color":"aqua","text":"青チーム","underlined":true}
        team modify Team.Blue prefix [{"color":"aqua","text":"[Blue] "}]
        team modify Team.Blue seeFriendlyInvisibles true
        team modify Team.Blue nametagVisibility hideForOtherTeams
        team modify Team.Blue friendlyFire false
        team modify Team.Blue collisionRule pushOtherTeams
        team modify Team.Blue color aqua

# フォースロード
    forceload add 0 0 0 0

# 原点を召喚
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}

# その他初期化が必要なもの
    function #asset:mob/load
    function #asset:object/load
