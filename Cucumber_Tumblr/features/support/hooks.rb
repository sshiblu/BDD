browser = Watir::Browser.new

Before do |scenario|
  @tumblr||= Tumblr.new browser
  # if @google is nil assign the value if its not or keep the value if its not
end

# After do |scenario|
# end

at_exit do
  browser.close
end
