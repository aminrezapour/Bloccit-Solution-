Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :labels, only: [:show]

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  # Note the alternative synthax root({to: 'welcome#index'})
  root to: 'welcome#index'

end
