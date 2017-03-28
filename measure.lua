--Robot must be in first space where it will measure, that space is already counted
--Simple Code to tell you how long the area is
--Note: Only works horizontal!
local robot = require("robot")
local measure = 1
local noBlock = true
while true do
  if robot.detect() == false then
    noBlock = true
  else
    noBlock = false
    print(measure)
  end
while noBlock do
  robot.forward()
  measure = measure + 1
  end
end
