local network = require('utils.network');

local utils = {
	network = network,
	sides = { "front", "back", "left", "right", "top", "bottom" }
}

function utils.hasValue(tab, val)
	for _, v in ipairs(tab) do
		if v == val then
			return true
		end
	end

	return false
end

return utils