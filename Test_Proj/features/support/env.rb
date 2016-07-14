require 'watir'
require 'pry'

require_relative 'pages/generic.rb'

Dir['#{Dir.pwd}/features/support/pages/*.r'].each do |f|
  require f
end
