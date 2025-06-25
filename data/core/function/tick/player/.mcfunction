#> core:tick/player/
#
# プレイヤーに対するtick処理
#
# @within function core:tick/

#> this
# @within *
#   core:tick/player/
#   player_manager:vanilla_attack
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
#   asset_manager:teleporter/tick/**
#   settings:change_difficulty/**
#   core:handler/attack
    #declare tag this

# thisタグ付与
#    tag @s add this

# タグ管理
    function player_manager:manage_tag/

# リセット
#    tag @s remove this
