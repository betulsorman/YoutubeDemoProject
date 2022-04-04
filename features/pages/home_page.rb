class HomePage

  def initialize
    @search_box_css = "#search-input"
    @search_button_css = "#search-icon-legacy"
  end

  def visit_home_page
    visit ""
  end

  def click_search_box
    find(@search_box_css).click
  end

  def search_text(text)
    fill_in placeholder: 'Search', with: text
    find(@search_button_css).send_keys(:enter)
  end

end


