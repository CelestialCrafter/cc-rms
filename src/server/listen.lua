local function listen(protocol, cb)
	local keepAlive = true

	while keepAlive do
		cb(rednet.receive(protocol))
	end

	return function()
		keepAlive = false
	end
end

return listen