Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'

  resources :posts do
    resources :comments
  end
  resources :users 
  root 'home#index'

end
