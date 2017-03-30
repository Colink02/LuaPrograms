local r = require("robot")
local c = require("computer")
local running = true
local dance_number = 0

while running do
	dance_number = math.random(10)
	
	if dance_number == 1 then
	r.forward()
	elseif dance_number == 2 then
	r.turnAround()
	elseif dance_number == 3 then
	r.up()
	elseif dance_number == 4 then
	r.turnLeft()
	elseif dance_number == 5 then
	r.back()
	elseif dance_number == 6 then
	r.turnRight()
	elseif dance_number == 7 then
	r.down()
	elseif dance_number == 8 then
	--Custom dance number
	r.up()
	r.down()
	r.turnLeft()
	elseif dance_number == 9 then
	--Custom dance number
	
	elseif dance_number == 10 then
	--Custom dance number
	
	
	end
end
