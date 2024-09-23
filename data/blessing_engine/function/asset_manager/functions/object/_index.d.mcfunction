#> blessing_engine:asset_manager/object/_index.d
# @private

#> storage
# @within *
#   blessing_engine:asset_manager/object/**
#   asset:object/**
#   api:object/**
    #declare storage asset:object

#> 初期化タグ
# @within
#   blessing_engine:asset_manager/object/**
#   api:object/core/summon
#   asset:object/**
    #declare tag ObjectInit

#> ObjectAsset側で定義されたEntityに付けられるタグ
# @within function
#   core:tick/
#   blessing_engine:asset_manager/object/summon/init
    #declare tag AssetObject

#> thisタグ
# @within function
#   blessing_engine:asset_manager/object/triggers/tick
#   assst:object/**
    #declare tag this