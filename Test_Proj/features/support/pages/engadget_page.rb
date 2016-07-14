class EngadgetPage < GenericPage
  def visit
    @browser.goto "https://www.engadget.com/uk"
  end
end
