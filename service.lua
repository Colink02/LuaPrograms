local c = require("computer")
local com = require("component")
local t = com.tunnel
local r = com.br_reactor
local is_running = false
local tmp = " "
local message = "temp"

function start()
is_running = true
  while start do
    if message == tmp then
      mess = r.getactive()
      
    else
      t.send(message)
      message = r.getactive()
      
    end
 os.sleep(0)
  end
end

function stop()
  is_running = false
  
  return is_running
end
