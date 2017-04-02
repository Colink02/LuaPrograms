local c = require("computer")
local com = require("component")
local pd = com.printer3d
local LightLevel = pd.getlightlevel
local buttonMode = pd.isButtonMode()

print("what file will this save to?")
file = io.read()
io.open(file, w)
io.output(file)

function readinput()
print("type help for a list of commands")
input = io.read()
end 
while true do

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
  if input == "

readinput()
end
