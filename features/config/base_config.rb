module BaseConfig
  @browser = ENV['browser'] || 'chrome-headless'
  def self.browser
    @browser
  end
end