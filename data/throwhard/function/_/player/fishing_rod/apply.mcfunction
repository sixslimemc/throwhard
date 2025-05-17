#> throwhard:_/player/fishing_rod/apply
#--------------------
# ./trigger
#--------------------

data modify entity @s Motion set from storage throwhardlib:out calculate.result
tag @s remove _throwhard.throwing