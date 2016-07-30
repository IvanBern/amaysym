#  Basepage

class BasePage
  include PageObject

  div(:ajax_loading, id: 'ajax_loading')

end

def page_path(page_path)
  page_url ENV['AMAYSIM_URL'] + page_path
end
