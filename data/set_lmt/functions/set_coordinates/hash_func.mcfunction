#> set_lmt:set_coordinates/hash_func
#
# | 31 - 20  |  19 - 8  |  7 - 0  |
# | x & 2047 | z & 2047 | y & 255 |
#
# @within set_lmt:set_coordinates/**

scoreboard players set $t1 set_lmt.temp 4096
execute store result score $t0 set_lmt.temp run data get storage set_lmt.__temp__:set_coordinates __io__.data[0]
scoreboard players operation $t0 set_lmt.temp %= $t1 set_lmt.temp

scoreboard players operation $t0 set_lmt.temp *= $t1 set_lmt.temp
execute store result score $t2 set_lmt.temp run data get storage set_lmt.__temp__:set_coordinates __io__.data[2]
scoreboard players operation $t2 set_lmt.temp %= $t1 set_lmt.temp
scoreboard players operation $t0 set_lmt.temp += $t2 set_lmt.temp

scoreboard players set $t1 set_lmt.temp 256
scoreboard players operation $t0 set_lmt.temp *= $t1 set_lmt.temp
execute store result score $t2 set_lmt.temp run data get storage set_lmt.__temp__:set_coordinates __io__.data[1]
scoreboard players operation $t2 set_lmt.temp %= $t1 set_lmt.temp
scoreboard players operation $t0 set_lmt.temp += $t2 set_lmt.temp

scoreboard players get $t0 set_lmt.temp
