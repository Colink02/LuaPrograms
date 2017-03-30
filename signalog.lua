local c = require("computer")
local event = require("event")
while true do
 local _, remoteAddress, port, payload = event.pull("modem_message")
 file = io.open("event.txt", "a")
 io.output(file)
 io.write("Received data '" .. tostring(payload) .. "' from address " .. remoteAddress .." on port " .. port .. ".")
 io.close(file)
end
