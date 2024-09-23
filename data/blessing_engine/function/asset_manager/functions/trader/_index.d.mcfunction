#> blessing_engine:asset_manager/trader/_index.d
# @private

#> InitTag
# @within blessing_engine:asset_manager/trader/**
    #declare tag TraderInit

#> tag
# @within
#   blessing_engine:asset_manager/trader/**
#   asset:trader/*/register/
    #declare tag Trader

#> storage
# @within
#   blessing_engine:asset_manager/trader/**
#   asset:trader/*/register/*
#   asset:trader/common/register
    #declare storage asset:trader

#> number of give
# @within
#   blessing_engine:asset_manager/trader/resolve_artifact/**
    #declare score_holder $N
