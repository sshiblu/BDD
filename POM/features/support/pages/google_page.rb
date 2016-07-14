class GoogleHomePage < GenericPage

  def visit
    @browser.goto "http://google.com"
  end

  def search_box
    @browser.text_field(id: /^lst-ib/)
  end

  def search_box=term
    search_box.set term
  end

  def search_button
    @browser.button(class: /^lsb/)
  end
end

# search_box='input'
# search_box 'input'
