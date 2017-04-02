local c = require("computer")
local com = require("component")
local rs = com.redstone


--Config
local side1 = "5" --For RFTools Shield
local side2 = "1" --For Power Disable and Enable
--End of Config

input = io.read()

if input == "shield" then
  rs.setOutput(
