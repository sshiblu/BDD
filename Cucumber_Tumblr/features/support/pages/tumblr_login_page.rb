class TumblrLoginPage < GenericPage
  def visit
    @browser.goto "#{BASE_URL}/login"
    await_on_page
  end

  def login
    email_textfield.when_present(5).set DETAILS["details"]["email"]
    next_button.click
    password_textfield.when_present(5).set DETAILS["details"]["password"]
    email_login_button.click
  end

  # def log_out_when_logged_in
  #   begin
  #     # check if you're logged in first
  #     @browser.goto BASE_URL
  #     # check if an element on the Dashboard can be accessed
  #     @browser.a(text: "Text").wait_until_present(5)
  #     # if it is found...
  #     # call the log_out method
  #     log_out
  #   rescue
  #     # if the unique element in the dashboard is not found...
  #     # it means the user is logged out and can access the login pages
  #     # do nothing else
  #   end
  # end

  def log_out
    user_icon.when_present(5).click
    log_out_button.when_present(5).click
    log_out_confirmation_button.when_present(5).click
  end

  def wrong_login
    email_textfield.when_present(5).set "foo"
    next_button.click
  end

  def verify_email_error_msg
    raise unless error_message.when_present(5).text == email_error_msg
  end

  def logged_in
    visit
    login
  end

  private

  def await_on_page
    next_button.wait_until_present(10)
  end

  def user_icon
    @browser.div(id:"account_button").button(class:"tab_anchor")
  end

  def log_out_button
    @browser.div(class:"popover_item_suffix")
  end

  def log_out_confirmation_button
    @browser.button(class:"ui_button btn_1 chrome blue")
  end

  def email_textfield
    @browser.text_field(name:"determine_email")
  end

  def password_textfield
    @browser.text_field(name:"user[password]")
  end

  def next_button
    @browser.button(id:"signup_forms_submit")
  end

  def signup_login_button
    @browser.button(id: "signup_login_button").click
  end

  def email_login_button
    @browser.button(id:"signup_forms_submit")
  end

  def error_message
    @browser.li(class: "error")
  end

  def email_error_msg
    "That's not a valid email address. Please try again."
  end
end
