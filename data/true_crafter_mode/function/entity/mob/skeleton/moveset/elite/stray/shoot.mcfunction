#> true_crafter_mode:entity/mob/skeleton/moveset/subspecies/stray/shoot
#
# フロストからもらってきた氷結弾を撃つ
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/subspecies/stray/

# 最寄りの矢をキル
    kill @n[type=arrow]

# バーストカウント設定
    scoreboard players set @s TMCM.Action.Burst 3
