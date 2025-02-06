#> asset:object/2003.wither_trap_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2003/init

#> 行き先マーカー
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 0.5

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,distance=..128] run function lib:forward_spreader/circle

# 召喚
    execute facing entity @n[type=marker,tag=SpreadMarker,distance=..128] eyes run rotate @s ~ ~

# リセット
    kill @n[type=marker,tag=SpreadMarker,distance=..128]
