class Tumblr
  def initialize(browser)
    @browser = browser
  end

  def tumblr_login
    @tumblr_login ||= TumblrLoginPage.new @browser
  end

  def tumblr_dashboard
    @tumblr_dashboard ||=TumblrDashboardPage.new @browser
  end
end
