local c = require("computer")
local com = require("component")
local t = com.tunnel
local r = com.br_reactor
local is_running = false
local tmp = " "
local message = "temp"

function start(is_running)
start = true
  while start do
    if message == tmp then
      mess = r.getactive()
      
    else
      message = r.getactive()
      t.send(message)
    end
  end
end

function stop(is_running)
  is_running = false
  
  return is_running
end
