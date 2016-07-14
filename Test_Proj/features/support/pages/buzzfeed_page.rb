class BuzzFeedPage < GenericPage
  def visit
    @browser.goto "https://www.buzzfeed.com"
  end
end
