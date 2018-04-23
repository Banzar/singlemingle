Rails.application.routes.draw do
  get 'users/index'

  get 'signup', :to => 'users#new'

  get 'login', :to => 'users#edit'

  get 'users/profile'

  root 'users#index'

  resources :users
end
