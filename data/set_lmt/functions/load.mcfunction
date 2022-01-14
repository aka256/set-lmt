#> set_lmt:load
# @handles minecraft:load

#
  scoreboard objectives add set_lmt.temp dummy
  scoreboard players add $t0 set_lmt.temp 0
  scoreboard players add $t1 set_lmt.temp 0
  scoreboard players add $t2 set_lmt.temp 0
  scoreboard players add $t3 set_lmt.temp 0
  scoreboard players add $t4 set_lmt.temp 0
  scoreboard players add $t5 set_lmt.temp 0
  scoreboard players add $t6 set_lmt.temp 0
  scoreboard players add $t7 set_lmt.temp 0

#
  function set_lmt:lib/lmt/load
