Given /^I am on the Dashboard page$/ do
  raise unless @b.url == 'http://puppies.herokuapp.com/'
end

  And /^I am on the first page$/ do
    raise unless @b.url == 'http://puppies.herokuapp.com/'
  end

  Then /^clicking the next button should take me to the second page$/ do
    @b.a(class: "next_page").click
    raise unless @b.url == "http://puppies.herokuapp.com/agency/index?page=2"
  end

  When /^I click on view details button for a puppy$/ do
    @b.input(class: "rounded_button").click
  end

  Then /^I am redirected to the Puppy info page$/ do
    raise unless @b.url == "http://puppies.herokuapp.com/puppies/4"
  end

  Then /^The header for the dashboard should be "(.+))"$/ do |heading|
    @b.div(class: "intro_t").wait_until_present
    raise unless @b.div(class: "intro_t").text == heading
  end
