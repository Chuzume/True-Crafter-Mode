# 飛ばす
    scoreboard players set $Temporary Chuz.Speed 16
    execute facing entity @n[type=marker,tag=TMCM.Marker.Aim] eyes rotated ~ ~-10 run function true_crafter_mode:entity/motion
    tag @s remove Chuz.Init

# マーカーキル
    kill @n[type=marker,tag=TMCM.Marker.Aim]
