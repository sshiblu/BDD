browser = Watir::Browser.new

Before do |scenario|
  @b ||= browser
  @b.goto "http://puppies.herokuapp.com/"
end

# After do |scenario|
#
# end

at_exit do
  browser.close
end
