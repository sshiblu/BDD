#Step defs:

Given /^Something$/ do
  # Do nothing end
end

Given /^One$/ do
  pending
end

Given /^Two$/ do
  true
end

Given /^Three$/ do
  false
end

Given /^Four$/ do
  raise "Some Exception"
end
