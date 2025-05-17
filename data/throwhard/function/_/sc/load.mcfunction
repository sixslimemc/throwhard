#> throwhard:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _throwhard dummy

scoreboard objectives add _throwhard.snowball minecraft.used:minecraft.snowball
scoreboard objectives add _throwhard.item minecraft.custom:drop
scoreboard objectives add _throwhard.fishing_rod minecraft.used:minecraft.fishing_rod

# DEBUG:
scoreboard players set *init _throwhard 0

execute unless score *init _throwhard matches 1 run function throwhard:_/init
scoreboard players set *init _throwhard 1