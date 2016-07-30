# Login page

class LoginPage < BasePage

  page_path '/my-account/my-amaysim/login'
  expected_title 'My amaysim'

  text_field(:number, id: 'my_amaysim2_user_session_login')
  text_field(:password, id: 'password')

  button(:submit, id: 'login_button')

end