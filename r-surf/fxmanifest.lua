fx_version 'adamant'

game 'gta5'

client_script 'Lua/C/**.lua'

server_script 'Lua/'

shared_scripts {
    'shared.lua',
    '@qb-core/shared/locale.lua',
    'Locale/en.lua'
}

files {
    'stream/**.**'
	
}
 
data_file 'HANDLING_FILE' 'stream/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/carvariations.meta'
data_file 'DLC_TEXT_FILE' 'stream/dlctext.meta'
client_script 'stream/vehicle_names.lua'