Before do |scenario|
  begin
    @browser = Selenium::WebDriver.for(:firefox)
    @browser.manage.timeouts.implicit_wait = 30
    @browser.manage.window.maximize
  rescue
    puts 'Scenario' + scenario
    abort('Error: Selenium Webdriver initialisation, check if Firefox is installed')
  end
end

After do
  @browser.close
end