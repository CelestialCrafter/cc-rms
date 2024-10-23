local network = require("utils.network")
local request = require("request")
local config  = require("config")

network.registerModem()
request(config.server, "hello world")