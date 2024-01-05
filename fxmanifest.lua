fx_version 'cerulean'
game 'gta5'

description 'Utils'
version '0.1'

shared_scripts {
	'shared/random.lua',
	'shared/callback.lua',
}

server_scripts {
    'server/callback.lua',
	'server/player.lua',
	'server/export.lua',
}

client_scripts {
    'client/callback.lua',
	'client/export.lua',
}



lua54 'yes'