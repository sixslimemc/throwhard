#> throwhard:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _throwhard dummy

scoreboard objectives add _throwhard.snowball minecraft.used:minecraft.snowball
scoreboard objectives add _throwhard.egg minecraft.used:minecraft.egg
scoreboard objectives add _throwhard.brown_egg minecraft.used:minecraft.brown_egg
scoreboard objectives add _throwhard.blue_egg minecraft.used:minecraft.blue_egg
scoreboard objectives add _throwhard.item minecraft.custom:drop
scoreboard objectives add _throwhard.fishing_rod minecraft.used:minecraft.fishing_rod
scoreboard objectives add _throwhard.ender_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add _throwhard.splash_potion minecraft.used:minecraft.splash_potion
scoreboard objectives add _throwhard.lingering_potion minecraft.used:minecraft.lingering_potion

# DEBUG:
scoreboard players set *init _throwhard 0

execute unless score *init _throwhard matches 1 run function throwhard:_/init
scoreboard players set *init _throwhard 1