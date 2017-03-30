local component = require("component")
local c = require("computer")
local event = require("event")
local m = component.modem
 m.open(123)

while true do

 local _, _, from, port, _, message = event.pull("modem_message")
 file = io.open("event.txt", "a")
 io.output(file)
 io.write("Got a message from " .. from .. " on port " .. port .. ": " .. tostring(message.."\n"))
 io.close(file)
end
