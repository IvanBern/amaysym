# Settings page

class SettingsPage < BasePage

  page_path '/my-account/my-amaysim/settings'

  div(:call_forwarding_settings, css: '#settings_call_forwarding')
  div(:call_forwarding_status, xpath: "*//div[@id='settings_call_forwarding']//div[contains(@class,'setting-option-value-text')]")
  div(:call_forwarding_number, xpath: "*//div[@id='settings_call_forwarding']//div[contains(@class,'setting-option-details-text')]")

  link(:edit_settings_call_forwarding, id: 'edit_settings_call_forwarding')
  link(:confirm_popup, css: '.confirm_popup_confirm')

  button(:call_divert_true, xpath: ".//*[@id='update_call_forwarding_form']//span[text()='Yes']")
  button(:call_divert_false, xpath: ".//*[@id='update_call_forwarding_form']//span[text()='No']")

  text_field(:call_divert_number, id: 'my_amaysim2_setting_call_divert_number')

  button(:save, name: 'commit')
  button(:cancel, id: 'cancel_settings_call_forwarding')

  paragraph(:popup, css: '.popup-content')
  link(:close_popup, css: "div[data-popup-type='success']>a")
  div(:success_popup, css: "div[data-popup-type='success']")



end