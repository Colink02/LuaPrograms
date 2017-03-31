local c = require("computer")
local com = require("component")
local t = com.tunnel
local r = com.br_reactor
local start = false
local tmp = " "
local message = "temp"

function start(start)
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

function stop(start)
  start = false
  
  return start
end
