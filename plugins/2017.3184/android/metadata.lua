local metadata = {
	plugin = {
        format = "jar",
        staticLibs = { "libplugin.AssetReader" }--[[,
        manifest = {
            permissions = {},
            usesPermissions = {},
            usesFeatures = {},
            applicationChildElements = {}
        }]]
    }
}

return metadata
