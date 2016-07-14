Given(/^I am on the Google homepage$/) do
  @system.google.visit
end

And(/^I go to Engadget$/) do
  @system.engadget.visit
end

And(/^I go to Buzzfeed$/) do
  @system.buzzfeed.visit
end
