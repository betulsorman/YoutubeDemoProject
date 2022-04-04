Before do |scenario|
  puts "Start #{scenario}"
  Driver.get_driver
  page.driver.browser.manage.window.maximize
  puts "SCENARIO Name == #{scenario.name}"

end

After do |scenario|
  Capybara.current_session.driver.quit
  puts "SCENARIO finished == #{scenario.name}"

end
