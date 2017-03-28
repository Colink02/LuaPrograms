local component = require("component")
local c = require("computer")


local delay = 300
--how long before next Reboot

while true do 
  if c.uptime() >= delay then
    c.beep(1000, 2)
    c.sleep(45)
    computer.shutdown(true)
    end
