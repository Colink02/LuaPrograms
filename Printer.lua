local c = require("computer")
local com = require("component")
local 3d = component.printer3d
local LightLevel = 3d.getlightlevel
local buttonMode = 3d.isButtonMode()

function readinput()
print("type help for a list of commands")
input = io.read()
end 

if input == "lightlevel" then
  print("Block light level will be"..LightLevel)
end
if input == "button on" then
  print("Turning on Block Button Mode")
  io.write("setButtonMode(true)")
end
if input == "button off" then 
  

readinput()
