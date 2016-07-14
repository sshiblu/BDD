browser = Watir::Browser.new

Before do |scenario|
  @system ||= System.new browser
end

After do |scenario|
  puts 'Oops!' if scenario.failed?
end

at_exit do
  browser.close
end
