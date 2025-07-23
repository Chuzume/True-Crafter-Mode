#> asset:object/abstract.gravity_projectile/init/
#
# ターゲットマーカーを狙って放つ
#
# @within asset:object/alias/2/init

# 飛ばす
    execute facing entity @n[type=marker,tag=TMCM.Marker.Aim] eyes run function lib:motion/
    kill @n[type=marker,tag=TMCM.Marker.Aim]
    tag @s remove Chuz.Init

# 見た目が必要であれば乗せる
    ride @n[type=item_display,tag=Chuz.Init] mount @s
    execute on passengers if entity @n[type=item_display,tag=Chuz.Init] run tag @s remove Chuz.Init
