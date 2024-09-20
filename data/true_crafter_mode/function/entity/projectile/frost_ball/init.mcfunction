#> true_crafter_mode:entity/projectile/frost_ball/init
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/shoot

# 最初にちょっと飛ばしてMotionを記録
    execute facing entity @n[type=marker,tag=TMCM.Marker.Aim] eyes run tp @s ~ ~ ~ ~ ~
    scoreboard players set @s Chuz.Speed 10
    function true_crafter_mode:entity/motion
    function true_crafter_mode:api/colide_check/get_first_motion
    tag @s remove Chuz.Init

# マーカーキル
    kill @n[type=marker,tag=TMCM.Marker.Aim]