#> asset:object/projectile.zealot_bullet/recursive/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# particle
    particle dust_color_transition{from_color:[0.8,0.2,1.0],scale:1,to_color:[0.2,0.2,0.2]} ^ ^ ^-0.5 0.1 0.1 0.1 1 1 force @a[distance=..64]
