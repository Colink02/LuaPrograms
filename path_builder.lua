local c = require("computer")
local r = require("robot")
local com = require("component")
print("what file would you like to open?")
file = io.read()
io.open(file)
io.input(file)
local size = io.read (1)

while true do
  local line = io.read("*number")
  if io.read() == "f" then
    r.moveforward
  elseif io.read() == "tl" then
    r.turnLeft()
  elseif io.read() == "tr" then
    r.turnRight()
  elseif io.read() == "d" then
    r.down()
  elseif io.read() == "u" then
    r.up()
  elseif io.read() == "b" then
    r.back()
  elseif io.read() == "invselect" then
    r.select(inv)
  else
    print("Invaild Code!")
    end
  
