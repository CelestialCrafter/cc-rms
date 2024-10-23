local network = require("utils.network")
local config  = require("config")

local function request(msg)
	local modem = network.modem
	assert(modem ~= nil, "modem not registered")

	rednet.send(config.server, msg, config.protocol)
end

return request