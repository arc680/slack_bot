require 'slack'
#require 'dotenv'
require 'json'

#Dotenv.load
otonokizaka_path = File.expand_path('../otonokizaka', __FILE__)
root_path = File.expand_path('../../../', __FILE__)
utils_path = File.expand_path('../', __FILE__)
p utils_path


settings_file = root_path + '/settings.json'

settings_data = open(settings_file) do |io|
  JSON.load(io)
end

TOKEN = settings_data['token']['arc680dev']

require utils_path + '/utils'
include Utils

require otonokizaka_path + '/muse'
require otonokizaka_path + '/idol'

#require otonokizaka_path + '/honoka'
#require otonokizaka_path + '/eri'
#require otonokizaka_path + '/kotori'
require otonokizaka_path + '/umi'
#require otonokizaka_path + '/rin'
#require otonokizaka_path + '/maki'
#require otonokizaka_path + '/nozomi'
#require otonokizaka_path + '/hanayo'
#require otonokizaka_path + '/nico'