#> asset:object/2008.dragon_homing_shot/summon/
#
# Object召喚処理の呼び出し時の処理のエイリアス
#
# @within asset:object/alias/2008/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/2008.dragon_homing_shot/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
