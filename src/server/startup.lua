local utils = require('utils')
local config = require('config')
local listen = require('listen')

listen(utils.protocol, function(id, msg)
	if utils.hasValue(config.approved_clients, id) then
		print(msg)
	end
end)