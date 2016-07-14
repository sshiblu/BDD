class GooglePage < GenericPage
  def visit
    @browser.goto "http://google.com"
  end
end
