local utils = require("utils")

local network = {
	modem = nil
}

function network.registerModem()
	return peripheral.find("modem", rednet.open) ~= nil
end

return network