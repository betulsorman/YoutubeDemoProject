search_result_page = SearchResultPage.new

And(/^verify search listed$/) do
  search_result_page.verify_search_list
end

And(/^open first video$/) do
  search_result_page.open_first_video
end
