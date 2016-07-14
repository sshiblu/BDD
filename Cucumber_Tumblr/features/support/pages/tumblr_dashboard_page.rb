class TumblrDashboardPage < GenericPage
  def check
    textbox_icon.wait_until_present(5)
  end

  private

  def textbox_icon
    @browser.div( id: "new_post").a(id:"new_post_label_text")
  end

end
