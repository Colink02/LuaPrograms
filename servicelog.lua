local c = require("computer")
local com = require("component")
local event = require("event")
local t = com.tunnel
local file = "log.txt"
io.open(file, a)
io.output(file)
while true do 
  local message = event.pull("modem_message")
  print(message)
  io.write(message.."\n")
end
