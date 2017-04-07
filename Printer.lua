local c = require("computer")
local com = require("component")
local res = require("PrinterResources")
local pd = com.printer3d
local LightLevel = pd.getlightlevel
local buttonMode = pd.isButtonMode()

file = io.tmpfile()
print("This session will be saved to "..file.."Reset in config")
io.open(file, w)
io.output(file)

function readinput()
print("type help for a list of commands")
input = io.read()
end 
while true do
--help
    if input == "help" then
            res.help()
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
if input == "emitRedstone on" then
    print("Turning on emitRedstone")
end
if input == "save" then 
        
break
return readinput()
