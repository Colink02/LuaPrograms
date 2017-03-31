local c = require("computer")
local event = require("event")
local com = require("component")
local t = com.tunnel
local r = com.br_reactor
local last_message = nil
local timer_id = nil

local function service_callback() 
local next = r.getactive()
  if last_message ~= next then
    t.send(next) 
    end
  last_message = next
end
    
    
    
function start() if timer_id then
   return
   end
timer_id = event.timer(1, service_callback, math.huge) 
end

function stop() if timer_id then 
  event.cancel(timer_id) timer_id = nil
  end
end
