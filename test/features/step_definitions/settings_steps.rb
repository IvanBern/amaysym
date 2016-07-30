When(/^I set call forwarding number to (.*)$/) do |number|
  on_page SettingsPage do |page|
    wait = Selenium::WebDriver::Wait.new(:timeout => 60) # seconds
    wait.until { page.edit_settings_call_forwarding }

    wait.until { !page.ajax_loading_element.visible? }
    wait.until { page.confirm_popup}
    wait.until { !page.ajax_loading_element.visible? }
    wait.until { !page.confirm_popup_element.visible? }
    #wait.until { page.call_divert_true_element.click }


    page.call_divert_true
    page.call_divert_number = number
    page.save

    wait.until { !page.ajax_loading_element.visible? }
    wait.until { page.close_popup_element.visible? }
    page.close_popup
  end
end

When(/^I cancel call forwarding number$/) do
  on_page SettingsPage do |page|
    wait = Selenium::WebDriver::Wait.new(:timeout => 60) # seconds
    wait.until { page.edit_settings_call_forwarding }

    wait.until { !page.ajax_loading_element.visible? }
    wait.until { page.confirm_popup}
    wait.until { !page.ajax_loading_element.visible? }
    wait.until { !page.confirm_popup_element.visible? }

    page.call_divert_false
    page.save
  end
end

Then(/^I should have (.*) in call forwarding number/) do |number|
  on_page SettingsPage do |page|
    wait = Selenium::WebDriver::Wait.new(:timeout => 60) # seconds
    wait.until { !page.ajax_loading_element.visible? }
    raise "Call forwarding number: #{number} is not set" unless page.call_forwarding_number.include? number
  end
end

Then(/^I should have text "([^"]*)" in call forwarding option value$/) do |text|
  on_page SettingsPage do |page|
    wait = Selenium::WebDriver::Wait.new(:timeout => 60) # seconds
    wait.until { !page.ajax_loading_element.visible? }
    raise "Unexpected option: '#{page.call_forwarding_status}',  expected: #{text}" unless page.call_forwarding_status.include? text
  end
end