require 'watir'
require 'pry'
require 'yaml'

require_relative 'pages/generic.rb'
Dir['#{Dir.pwd}/features/support/pages/*.r'].each do |f|
  require f
end

DETAILS = YAML.load(File.open("test_data/details.yaml"))

BASE_URL="www.tumblr.com"
