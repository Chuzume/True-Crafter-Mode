#> player_manager:arrow/
#
# 弓を使うと実行される 
#
# @within function core:handler/use_bow

# 自分のチームに応じたフィールドを設定する
    execute if entity @s[team=Team.Blue] run data modify storage api: Argument.FieldOverride.Team set value Blue
    execute if entity @s[team=Team.Red] run data modify storage api: Argument.FieldOverride.Team set value Red

# 周囲の矢にコマンドを実行させる
    execute as @e[type=#minecraft:arrows,tag=!AssetObject,distance=..8] at @s run function player_manager:arrow/convert/

# 万が一何も起きなかった時が怖いので、リセット
    data remove storage api: Argument.FieldOverride.Team
