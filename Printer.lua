local c = require("computer")
local com = require("component")
local 3d = com.printer3d
local LightLevel = 3d.getlightlevel
local buttonMode = 3d.isButtonMode()

print("what file will this save to?")
local file = io.read()
io.open(file, w)
io.output(file)

while true do
function readinput()
print("type help for a list of commands")
input = io.read()
end 

if input == "lightlevel" then
  print("Block light level will be"..LightLevel)
end
if input == "button on" then
    if buttonMode == "on" then
      print("already turned on")
    else
  print("Turning on Block Button Mode")
  io.write("setButtonMode(true)")
    end
end
if input == "button off" then 
  if buttonMode == "off" then
    print("Already off")
  end
  else
    print("Turning off Block Button Mode")
    io.write("setButtonMode(false)")
  end

readinput()
end
