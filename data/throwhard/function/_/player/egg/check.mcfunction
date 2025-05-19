#> throwhard:_/player/egg/check
#--------------------
# _/tick
#--------------------

execute if score @s _throwhard.egg matches 1.. run function throwhard:_/player/egg/trigger with entity @s
execute if score @s _throwhard.blue_egg matches 1.. run function throwhard:_/player/egg/trigger with entity @s
execute if score @s _throwhard.brown_egg matches 1.. run function throwhard:_/player/egg/trigger with entity @s