class TumblrPostModal < GenericPage
  def fill_in_post
    header.when_present(5).send_keys header_text
    main_body.click
    main_body.send_keys main_body_text
    post_button.when_present(5).click
  end

  private

  def header
    @browser.div(class: "editor-plaintext")
  end

  def main_body
    @browser.div(class:"editor editor-richtext")
  end

  def post_button
    @browser.button(class:"button-area create_post_button")
  end

  def header_text
    "Hope this works"
  end

  def main_body_text
    "I believe my good man, that it works and it works well."
  end
end
