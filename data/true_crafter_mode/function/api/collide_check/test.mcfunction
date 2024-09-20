#> true_crafter_mode:api/collide_check/test
#
# 
#
# @within function true_crafter_mode:tick

    # 最初にちょっと飛ばしてMotionの初期値を取得
        scoreboard players set @s Chuz.Speed 10
        function true_crafter_mode:entity/motion
        function true_crafter_mode:api/collide_check/get_first_motion
        data modify storage chuz:storage test set from entity @s Motion