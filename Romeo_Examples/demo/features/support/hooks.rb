browser = Watir::Browser.new

Before do |scenario|
  @browser ||= browser
end

After do |scenario|

end

at_exit do
  browser.close
end
