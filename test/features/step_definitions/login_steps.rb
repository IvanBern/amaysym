Given(/^I am logged in to MyAmaysim$/) do
  visit_page LoginPage

  on_page LoginPage do |page|
    page.number = ENV['AMAYSIM_NUMBER']
    page.password = ENV['AMAYSIM_PASS']
    page.submit
  end

  on_page DashboardsPage do |page|
    wait = Selenium::WebDriver::Wait.new(:timeout => 30) # seconds
    wait.until { page.customer_name_element.exists? }
  end
end

