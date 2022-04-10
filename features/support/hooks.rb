Before do |scenario|
  puts "Start #{scenario}"
  Driver.get_driver
  puts "SCENARIO Name == #{scenario.name}"

end

After do |scenario|
  Capybara.current_session.driver.quit
  puts "SCENARIO finished == #{scenario.name}"

end
