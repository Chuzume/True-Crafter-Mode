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

    #> 難易度用トリガースコアボード
    # @public
        scoreboard objectives add Trigger.Difficulty trigger {"text":"トリガー: 難易度"}


    #> イベントハンドラ用スコアボード
    # @within function
    #   asset_manager:artifact/triggers/**
    #   core:load_once
    #   core:handler/*
    #   core:tick/**
        #scoreboard objectives add FirstJoinEvent custom:play_time {"text":"イベント: 初回Join"}
        #scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: ゲームから退出"}
        #scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
        #scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}
        #scoreboard objectives add Sneak custom:sneak_time {"text":"イベント: スニーク"}
        #scoreboard objectives add Elytra custom:aviate_one_cm {"text":"イベント: エリトラ"}
        #scoreboard objectives add DropEvent custom:drop {"text":"イベント: アイテムドロップ"}
        #scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick {"text":"イベント: クリック 人参棒"}
        #scoreboard objectives add UseBowEvent used:bow {"text":"イベント: 弓の使用"}

#> 難易度設定がなされていなければ、やる
    execute unless score $Difficulty Global matches 0.. run scoreboard players set $Difficulty Global 1

# チーム作成と設定
    # 敵キャラども
        team add TrueCrafterEnemy
        team modify TrueCrafterEnemy displayName {"color":"red","text":"敵","underlined":true}
        team modify TrueCrafterEnemy seeFriendlyInvisibles true
        team modify TrueCrafterEnemy nametagVisibility never
        team modify TrueCrafterEnemy friendlyFire false

# 簡単にコマンドの限界に達するだろうから
    gamerule maxCommandChainLength 2147483647

# フォースロード
    forceload add 0 0 0 0

# 原点を召喚
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}

# その他初期化が必要なもの
    function #asset:mob/load
    #function #asset:object/load

# Romを一回だけ初期化
    execute unless data storage rom: _ run function rom:init

# データチェックとアプデ処理
    execute unless data storage version: {Version:"3.0.0_Beta.6"} run function rom:init
    execute unless data storage version: {Version:"3.0.0_Beta.6"} run data modify storage version: Version set value "3.0.0_Beta.6"
