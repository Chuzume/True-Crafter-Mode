
# 飛び越え動作
    tp @s @s
    function true_crafter_mode:move_xz
    data modify entity @s Motion[1] set value 0.4

# スコアリセット
    scoreboard players reset @s Chuz.Speed