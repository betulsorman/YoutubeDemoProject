module BaseConfig
  @browser = ENV['browser'] || 'chrome'
  def self.browser
    @browser
  end
end