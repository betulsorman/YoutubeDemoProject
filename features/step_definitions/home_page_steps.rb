home_page = HomePage.new

Given(/^visit homepage$/) do
  home_page.visit_home_page
end

When(/^clicks on search box$/) do
  home_page.click_search_box
end

And(/^search with "([^"]*)"$/) do |text|
  home_page.search_text(text)
end