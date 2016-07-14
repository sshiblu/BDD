require 'pry'

# Given /^these users:$/ do |table|
#   @table = table
#   binding.pry
#   @table.class
#   @table.raw
# end

Given /^I have (.+) in my account$/ do |balance|
  puts "Your Account Balance is: #{balance}"
end

And /^I withdraw (.+)$/ do |withdrawal|
  puts "You are Withdrawing: #{withdrawal}"
end

Then /^I should have (.+) in my account$/ do |remaining|
  puts "Your Account Balance is now: #{remaining}"
end
