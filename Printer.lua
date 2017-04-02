local c = require("computer")
local com = require("component")
local 3d = component.printer3d
local LightLevel = 3d.getlightlevel
local buttonMode = 3d.isButtonMode()

print("what file will this save to?")
local file = io.read()
io.open(file, a)
io.output(file)

function readinput()
print("type help for a list of commands")
input = io.read()
end 

if input == "lightlevel" then
  print("Block light level will be"..LightLevel)
end
if input == "button on" then
    if buttonMode == "
  print("Turning on Block Button Mode")
  io.write("setButtonMode(true)")
end
if input == "button off" then 
  
  

readinput()
