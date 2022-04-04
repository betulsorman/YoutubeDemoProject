class SearchResultPage

  def initialize
    @filters_text_xpath = "(//*[text()='Filters'])"
    @select_first_video = "#video-title.style-scope"
  end

  def verify_search_list
    page.should have_xpath(@filters_text_xpath)
  end

  def open_first_video
    first(@select_first_video).click
  end

end



