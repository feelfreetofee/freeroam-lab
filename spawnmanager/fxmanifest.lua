-- This resource is part of the default Cfx.re asset pack (cfx-server-data)
-- Altering or recreating for local use only is strongly discouraged.

version '1.0.0'
author 'Cfx.re <root@cfx.re>'
description 'A flexible handler for game type/map association.'
repository 'https://github.com/citizenfx/cfx-server-data'

client_scripts {
	"spawnmanager.lua"
}

server_scripts {
	"server.lua"
}

fx_version 'adamant'
games { 'gta5' }
