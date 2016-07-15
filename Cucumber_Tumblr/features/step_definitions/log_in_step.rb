Given /^I am on the Tumblr Login Page$/ do
  @tumblr.tumblr_login.visit
end

  And /^I have entered valid credentials$/ do
    @tumblr.tumblr_login.login
  end

  Then /^I should be taken to the Tumblr Dashboard$/ do
    @tumblr.tumblr_dashboard.check
    @tumblr.tumblr_login.log_out
  end

  And /^I have entered an Invalid email$/ do
    @tumblr.tumblr_login.wrong_login
  end

  Then /^an email error message should be shown$/ do
    @tumblr.tumblr_login.verify_email_error_msg
  end
