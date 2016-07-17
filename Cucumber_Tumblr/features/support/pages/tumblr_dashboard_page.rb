class TumblrDashboardPage < GenericPage
  def check
    create_post_button.wait_until_present(5)
  end

  def create_a_new_post
    create_post_button.click
  end

  def check_post
    raise unless post_title.when_present(5).text == header_text
  end

  private

  def create_post_button
    @browser.a(text: "Text")
  end

  def header_text
    "Hope this works"
  end

  def post_title
    @browser.div(class:"post_container").div(class:"post_title")
  end
end
