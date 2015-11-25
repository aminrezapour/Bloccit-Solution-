Rails.application.routes.draw do

  resources :questions

  resources :posts

  get 'about' => 'welcome#about'

  # Note the alternative synthax root({to: 'welcome#index'})
  root to: 'welcome#index'

end
