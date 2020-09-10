local Library = require "CoronaLibrary"
local lib = Library:new{ name = 'AssetReader', publisherId = 'com.xibalbastudios' }

local warned

local function warn ()
	if not warned then
		print("WARNING: plugin.AssetReader is not available for this platform.")

		warned = true
	end
end

local function unavailable (ret)
	return function()
		warn()

		return ret
	end
end

lib.EnumerateDirectory = unavailable(nil)

function lib.NewProxy ()
	warn()

	return { Bind = unavailable(false), Clear = unavailable(), GetRemainingLength = unavailable(0) }
end

lib.Read = unavailable(nil)

return lib
