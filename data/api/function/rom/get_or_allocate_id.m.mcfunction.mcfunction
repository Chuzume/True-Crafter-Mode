#> api:rom/get_or_allocate_id.m.mcfunction
#
# 
#
# @within function api:rom/please

#> Private
# @private
#declare score_holder $TriggerIndex

# データの割当てがなければ、IDを割り当てる
    $execute unless data storage asset_manager: IntID."$(Address)".ID store result storage asset_manager: IntID."$(Address)".ID int 1 run scoreboard players add $TriggerIndex Global 1

# 後で使うので、仮置きスコアとしてアドレスのIDを登録
    $execute store result score $Address Temporary run data get storage asset_manager: IntID."$(Address)".ID
