local c = require("computer")
local com = require("component")
local t = com.tunnel
local r = com.br_reactor
local last_message = nil
local tmp = " "
local message = "temp"
local timer_id = nil

local function service_callback() 
local next = r.getactive()
  if last_message ~= next then
    t.send(next) 
    end
  last_message = next
end
    
    
    
function start() if timer_id then
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
