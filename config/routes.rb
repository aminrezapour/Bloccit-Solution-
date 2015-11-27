Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]
  post 'users/confirm' => 'users#confirm'

  get 'about' => 'welcome#about'

  # Note the alternative synthax root({to: 'welcome#index'})
  root to: 'welcome#index'

end
