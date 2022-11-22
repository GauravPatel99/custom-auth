-- Copyright (C) Kong Inc.
local access = require "kong.plugins.custom-auth.access"
local kong_meta = require "kong.meta"

local customAuthHandler = {
  VERSION = kong_meta.version,
  PRIORITY = 1100,
}


function customAuthHandler:access(conf)
  access.execute(conf)
end

return customAuthHandler