#> blessing_engine:asset_manager/teleporter/_index.d
# @private

#> storage
# @within *
#   asset:teleporter/*/*
#   asset:teleporter/common/register
#   blessing_engine:asset_manager/teleporter/**
    #declare storage asset:teleporter

#> Teleporter
# @within
#   blessing_engine:asset_manager/teleporter/**
#   api:teleporter/set_activation_state/from_nearest
    #declare tag Teleporter

#> TeleportPoint
# @within blessing_engine:asset_manager/teleporter/tick/**
    #declare tag FromTeleporter
    #declare tag TeleporterInitialized
    #declare tag TeleporterInitializing
    #declare tag TPStar
    #declare tag TPStar.White
    #declare tag TPStar.Aqua
    #declare tag SuppressTeleport
    #declare tag TPCancel

#> for Init
# @within blessing_engine:asset_manager/teleporter/tick/star_init/*
    #declare tag TPStarInit

#> OpenDeclares
# @within blessing_engine:asset_manager/island/dispel/register_tp
    #declare tag Teleporter

#> TeleporterExists
# @within blessing_engine:asset_manager/teleporter/update_activation_state/*
    #declare score_holder $TeleporterExists
