#> blessing_engine:asset_manager/island/_index.d
# @private

#> storage
# @within *
#   asset:island/*/register/*
#   asset:island/common/register
#   blessing_engine:asset_manager/island/**
#declare storage asset:island

#> Tag
# @within *
#   asset:island/*/register/
#   blessing_engine:asset_manager/island/**
#   core:tick/
#declare tag CursedArtifact

#> Tag
# @within *
#   blessing_engine:asset_manager/island/**
#   core:tick/
#declare tag DispelledCursedArtifact

#> Tag
# @within function
#   blessing_engine:asset_manager/island/register/*
#declare tag CursedArtifactInit

#> Tag
# @within function
#   blessing_engine:asset_manager/island/dispel/boss/*
#   blessing_engine:asset_manager/island/tick/
    #declare tag CantDispel
    #declare tag BossSummonMarker

# MEMO
# DispelPhase:
#   0b: unknown(first boss waited/dispellable)
#   1b: boss waited
#   2b: dispellable
#   3b: dispelled
