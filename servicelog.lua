local c = require("computer")
local com = require("component")
local t = com.tunnel
local file = log.txt
while true do 
  local message = event.pull("modem_message")
  io.open(file, a)
  io.write(message.."\n")
  io.close(file)
end
