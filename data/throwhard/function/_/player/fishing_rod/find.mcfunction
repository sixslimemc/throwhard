#> throwhard:_/player/fishing_rod/find
#--------------------
# ./trigger
#--------------------

tag @s add _throwhard.checked
execute on origin store result score *x _throwhard if entity @s[tag=_throwhard.thrower]
execute if score *x _throwhard matches 1 run scoreboard players set *found _throwhard 1
execute if score *x _throwhard matches 1 run return run tag @s add _throwhard.throwing

execute as @n[type=fishing_bobber, tag=!_throwhard.checked] at @s run function throwhard:_/player/fishing_rod/find
