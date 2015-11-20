Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/faq'

  # Note the alternative synthax root({to: 'welcome#index'})
  root to: 'welcome#index'

end
