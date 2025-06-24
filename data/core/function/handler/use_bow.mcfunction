#> core:handler/use_bow
#
# 
#
# @within function core:tick/player/

# asset_managerへの引継ぎ
#    tag @s add TriggerFlag.ClickCarrot

# 矢の変換を行う
    function player_manager:arrow/

# Reset
    scoreboard players reset @s UseBowEvent
