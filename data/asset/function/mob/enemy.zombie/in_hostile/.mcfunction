#> asset:mob/enemy.zombie/in_hostile/
#
# 敵対時のメソッド
#
# @within asset:mob/alias/enemy.in_hostile

# 飛びかかり攻撃、ただし槍持ちじゃないなら
    execute unless entity @s[tag=enemy.zombie.spear] run function asset:mob/enemy.zombie/in_hostile/main_attack
