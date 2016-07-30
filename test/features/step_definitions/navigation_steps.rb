### parameter |page| is a PageObject Class name
Given(/^I am on "([^"]*)" page$/) do |page|
  visit_page page+'Page'
end

And(/^I refresh browser$/) do
  @browser.navigate.refresh
end