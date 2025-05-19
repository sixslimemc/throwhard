#> throwhard:_/player/egg/apply
#--------------------
# ./trigger
#--------------------

data modify entity @s Motion set from storage throwhardlib:out calculate.result
tag @s remove _throwhard.throwing
tag @s add _throwhard.thrown
