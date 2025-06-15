#> throwhard:_/init
#--------------------
# @init
#--------------------

data modify storage throwhard:config throw.snowball set value {enable:true, add:false, force:{transfer_player_motion:true, base:1.1d, fling:{multiplier:1.3d}, variation:{rotation:{radial:{min:0, max:1}}}}}

data modify storage throwhard:config throw.egg set from storage throwhard:config throw.snowball

data modify storage throwhard:config throw.ender_pearl set from storage throwhard:config throw.snowball

data modify storage throwhard:config throw.item set value {enable:true, fast_pickup:true, add:false, force:{transfer_player_motion:true, base:0.27d, fling:{multiplier:0.6d}, variation:{magnitude:{min:-0.03, max:0.04}, rotation:{radial:{min:0, max:5}}}}}

data modify storage throwhard:config throw.fishing_rod set value {enable:true, add:false, force:{transfer_player_motion:true, base:1d, fling:{multiplier:1.2d}}}

data modify storage throwhard:config throw.splash_potion set value {enable:true, add:false, force:{transfer_player_motion:true, base:0.35d, fling:{multiplier:0.58d}, variation:{magnitude:{min:-0.03, max:0.07}, rotation:{radial:{min:0, max:4}}}}}

data modify storage throwhard:config throw.lingering_potion set from storage throwhard:config throw.splash_potion