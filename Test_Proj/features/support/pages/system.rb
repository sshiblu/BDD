class System
  def initialize (browser)
    @browser = browser
  end

  def google
    @google ||= GooglePage.new @browser
  end

  def engadget
    @engadget ||= EngadgetPage.new @browser
  end

  def buzzfeed
    @buzzfeed ||= BuzzFeedPage.new @browser
  end
end
