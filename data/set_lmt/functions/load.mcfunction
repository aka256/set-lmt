#> set_lmt:load
# @handles minecraft:load

#
  scoreboard objectives add set_lmt.temp dummy
  scoreboard players add $t0 set_lmt.temp 0
  scoreboard players add $t1 set_lmt.temp 0

#
  function set_lmt:lib/lmt/load
