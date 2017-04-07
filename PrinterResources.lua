local com = require("component")
local pd = com.printer3d
local file = "printertmp.lua"

--Variables
function help()
--help
    if input == "help" then
    print("lightlevel: shows what the blocks light level is")
    print("button on:off | turn button mode on or off")
    print("emitRedstone on:off | add redstone mode to the block adds or deletes buttonMode as well")
    print("start | Begins printing custom block")
    print("save | Saves Current File")
 end
--end of if "help"

function ModeCheck()
   init()
   if pd.isButtonMode() == "on" then
      io.write("on")
   end
   else
      io.write("off")
   end 
end
function init()
  io.open(file, a)
end
function initclose()
